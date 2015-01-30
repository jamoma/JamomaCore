/*
 * @file TTWebSocket.cpp
 * @group network library
 * @brief Jamoma WebSocket server
 * @see TTWebSend, TTWebReceive
 *
 * @copyright © 2013, Laurent Garnier
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 *
 * @details Use cross platform civetweb server from https://github.com/sunsetbrew/civetweb
 * @details Some parts of this code are taken from ws_server example
 */


#include "TTWebSocket.h"
#include <chrono>
#include <thread>

// ws_server_thread()
static void *ws_server_thread(void *parm)
{
    int wsd = (long)parm;
    struct mg_connection    *conn = ws_conn[wsd].conn;
    int timer = 0;
    
    /* While the connection is open, send periodic updates */
    while(!ws_conn[wsd].closing) {
        std::this_thread::sleep_for(std::chrono::milliseconds(100)); /* 0.1 second */
        timer++;
        
        /* Send periodic PING to assure websocket remains connected, except if we are closing */
        if (timer%100 == 0 && !ws_conn[wsd].closing)
            mg_websocket_write(conn, WEBSOCKET_OPCODE_PING, NULL, 0);
    }
    
    // reset connection information to allow reuse by new client
    ws_conn[wsd].conn = NULL;
    ws_conn[wsd].update = 0;
    ws_conn[wsd].closing = 2;
    
    return NULL;
}

// websocket_connect_handler()
// On new client connection, find next available server connection and store
// new connection information. If no more server connections are available
// tell civetweb to not accept the client request.
static int websocket_connect_handler(const struct mg_connection *conn)
{
    int i;
    
    fprintf(stderr, "websocket connect handler\n");
    
    for(i=0; i < CONNECTIONS; ++i) {
        if (ws_conn[i].conn == NULL) {
            ws_conn[i].conn = (struct mg_connection *)conn;
            ws_conn[i].closing = 0;
            ws_conn[i].update = 0;
            break;
        }
    }
    if (i >= CONNECTIONS) {
        fprintf(stderr, "websocket refused connection: Max connections exceeded\n");
        return 1;
    }
    
    return 0;
}

// websocket_ready_handler()
// Once websocket negotiation is complete, start a server for the connection
static void websocket_ready_handler(struct mg_connection *conn)
{
    int i;
    
    fprintf(stderr, "websocket ready handler\n");
    
    for(i=0; i < CONNECTIONS; ++i) {
        if (ws_conn[i].conn == conn) {
            fprintf(stderr, "websocket start server %d\n", i);
            mg_start_thread(ws_server_thread, (void *)(long)i);
            break;
        }
    }
}

// websocket_close_handler()
// When websocket is closed, tell the associated server to shut down
static void websocket_close_handler(struct mg_connection *conn)
{
    int i;
    
    //fprintf(stderr, "close handler\n");   /* called for every close, not just websockets */
    
    for(i=0; i < CONNECTIONS; ++i) {
        if (ws_conn[i].conn == conn) {
            fprintf(stderr, "websocket close server %d\n", i);
            ws_conn[i].closing = 1;
        }
    }
}

// Arguments:
//   flags: first byte of websocket frame, see websocket RFC,
//          http://tools.ietf.org/html/rfc6455, section 5.2
//   data, data_len: payload data. Mask, if any, is already applied.
static int websocket_data_handler(struct mg_connection *conn, int flags,
                                  char *data, size_t data_len)
{
    int     i;
    int     wsd;
    TTValue receivedMessage;
    
    for(i=0; i < CONNECTIONS; ++i) {
        if (ws_conn[i].conn == conn) {
            wsd = i;
            break;
        }
    }
    if (i >= CONNECTIONS) {
        fprintf(stderr, "websocket received websocket data from unknown connection\n");
        return 1;
    }
    
    std::string s1 = data;
    std::string s2 = "set";
    std::string s3 = "get";
    std::string s4 = "namespace";
    std::string s5 = "listen";
    std::size_t found1 = s1.find(s2);
    std::size_t found2 = s1.find(s3);
    std::size_t found3 = s1.find(s4);
    std::size_t found4 = s1.find(s5);
    
    if (flags & 0x80) {
        flags &= 0x7f;
        switch (flags) {
            case WEBSOCKET_OPCODE_CONTINUATION:
                fprintf(stderr, "websocket receive CONTINUATION...\n");
                break;
            case WEBSOCKET_OPCODE_TEXT:
                fprintf(stderr, "websocket receive : %-.*s\n", (int)data_len, data);
                
                // store this connection to send back data
                mLastConnection = conn;
                
                // if it is an unknown message, send to other connected clients
                if (found1 == std::string::npos && found2 == std::string::npos && found3 == std::string::npos && found4 == std::string::npos)
                    for(i=0; i < CONNECTIONS; ++i) {
                        if (ws_conn[i].conn && i != wsd)
                            mg_websocket_write(ws_conn[i].conn, WEBSOCKET_OPCODE_TEXT, data, data_len);
                    }
                else
                {
                    // if it is a set message, send to the other clients
                    if (found1 != std::string::npos)
                        for(i=0; i < CONNECTIONS; ++i) {
                            if (ws_conn[i].conn && i != wsd)
                                mg_websocket_write(ws_conn[i].conn, WEBSOCKET_OPCODE_TEXT, data, data_len);
                        }

                    // add end character to received string
					data[data_len] = '\0';
                    
                    // send received datas to JamomaModular WebSocket plugin
                    receivedMessage.clear();
					receivedMessage = TTString(data);
                    ((TTWebSocketPtr)(mg_get_request_info(conn)->user_data))->mOwner->sendMessage(TTSymbol("WebSocketReceive"), receivedMessage, kTTValNONE);
                }
                break;
            case WEBSOCKET_OPCODE_BINARY:
                fprintf(stderr, "websocket receive BINARY...\n");
                break;
            case WEBSOCKET_OPCODE_CONNECTION_CLOSE:
                fprintf(stderr, "websocket receive CLOSE...\n");
                /* If client initiated close, respond with close message in acknowlegement */
                if (!ws_conn[wsd].closing) {
                    mg_websocket_write(conn, WEBSOCKET_OPCODE_CONNECTION_CLOSE, data, data_len);
                    ws_conn[wsd].closing = 1; /* we should not send addional messages when close requested/acknowledged */
                }
                return 0; /* time to close the connection */
                break;
            case WEBSOCKET_OPCODE_PING:
                /* client sent PING, respond with PONG */
                mg_websocket_write(conn, WEBSOCKET_OPCODE_PONG, data, data_len);
                break;
            case WEBSOCKET_OPCODE_PONG:
                /* received PONG to our PING, no action */
                break;
            default:
                fprintf(stderr, "websocket Unknown flags: %02x\n", flags);
                break;
        }
    }
    
    return 1;   /* keep connection open */
}


TTWebSocket::TTWebSocket(const TTObjectBasePtr owner, const TTUInt16 port, const TTString& htmlPath)
{
    mOwner = owner;
    mPort = port;
    mHtmlPath = htmlPath;
}

TTWebSocket::TTWebSocket()
{
}

TTWebSocket::~TTWebSocket()
{
    mg_stop(mContext);
}

TTErr TTWebSocket::bind()
{
    char portString[20];
    sprintf(portString, "%d", mPort);
    
    char server_name[40];
    struct mg_callbacks callbacks;
    const char *options[] = {
        "listening_ports", portString,
        "document_root", mHtmlPath,
        NULL
    };
    
    /* get simple greeting for the web server */
    snprintf(server_name, sizeof(server_name),
             "Civetweb websocket server v. %s",
             mg_version());
    
    memset(&callbacks, 0, sizeof(callbacks));
    callbacks.websocket_connect = websocket_connect_handler;
    callbacks.websocket_ready = websocket_ready_handler;
    callbacks.websocket_data = websocket_data_handler;
    callbacks.connection_close = websocket_close_handler;
    
    mContext = mg_start(&callbacks, this, options);
    
    if (mContext) {
        /* show the greeting and some basic information */
        printf("%s started on port(s) %s with web root [%s]\n",
               server_name, mg_get_option(mContext, "listening_ports"),
               mg_get_option(mContext, "document_root"));
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTWebSocket::SendMessage(TTSymbol& message)
{
    if (mLastConnection) {
        int result = mg_websocket_write(mLastConnection, WEBSOCKET_OPCODE_TEXT, message.c_str(), message.string().size());
    }
    else {
        TTLogError("WebSocket message not sent : %s\n", message.c_str());
        return kTTErrGeneric;
    }
    
    return kTTErrNone;
}
