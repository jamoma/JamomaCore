/* 
 * TTBlue low-priority queue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTQueue.h"



void* TTQueueMaster(void* anArgument)
{
	TTQueue *queue = (TTQueue*)anArgument;
	
	return queue->run();
}


/****************************************************************************************************/

TTQueue::TTQueue()
	: queueThread(NULL)
{
	queueThread = new TTThread(TTQueueMaster, this);
	queueEventObjects = new TTList;
	queueEventMethods = new TTList;
	queueEventValues = new TTList;
}


TTQueue::~TTQueue()
{
	if(queueThread)
		delete queueThread;
	delete queueEventObjects;
	delete queueEventMethods;
	delete queueEventValues;
}


// main loop for the queue
void* TTQueue::run()
{
/*
	TTListItem*	objectItem;
	TTObject*	object;
	TTListItem*	messageItem;
	TTSymbol*	message;
	TTListItem*	valueItem;
	TTValue		value;
	TTValue		tempValue;

	while(1){
		objectItem = queueEventObjects->getHead(tempValue);
		object = tempValue;
		messageItem = queueEventObjects->getHead(tempValue);
		message = tempValue;
		valueItem = queueEventObjects->getHead(tempValue);
		value = tempValue;
		
		object->sendMessage(message, value);

		TTThread::sleep(40);	// 24 fps
		// do we want to check every 40 ms?  Or do we want to kill the thread and re-create it only when it is needed?
	}
 */
	return NULL;
}


/** Add a call to the back of the queue.  Will trigger the queue to be serviced if it isn't
	already scheduled. */
void TTQueue::queueToBack(TTObject& anObject, TTSymbol* aMessage, TTValue& aValue)
{
	TTValue	tempValue;

	tempValue = anObject;
	queueEventObjects->append(tempValue);
	tempValue = aMessage;
	queueEventMethods->append(tempValue);
	queueEventValues->append(aValue);
}


/*
 void maxapplication_setupeventtimer(t_maxapplication *x)
 {
 EventLoopRef mainLoop;
 EventLoopTimerUPP timerUPP;
 long interval;
 
 if (x->a_eventtimer) {
 RemoveEventLoopTimer(x->a_eventtimer);
 x->a_eventtimer = 0;
 }
 interval = object_attr_getlong(ps_max->s_thing, gensym("eventinterval")); 
 if (interval < 1)
 interval = 1; 
 mainLoop = GetMainEventLoop();
 timerUPP = NewEventLoopTimerUPP(maxapplication_eventtimerproc);
 InstallEventLoopTimer (mainLoop,
 1*kEventDurationMillisecond,
 interval * kEventDurationMillisecond,
 timerUPP,
 NULL,
 &x->a_eventtimer);
 }
 
 void maxapplication_destroyeventtimer(t_maxapplication *x)
 {
 if (x && x->a_eventtimer) {
 RemoveEventLoopTimer(x->a_eventtimer); 
 x->a_eventtimer = NULL; 
 }
 }
 
 */



/*
 
 #ifdef WIN_VERSION
 
 // on windows we use the multimedia timer for decent timer resolution
 // however, we need to make an invisible window to move the timer callback
 // from the timer thread to the main thread.  
 
 LRESULT CALLBACK maxapplication_windowproc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
 void maxapplication_registerclass();
 void maxapplication_createeventwindow(t_maxapplication *x);
 void maxapplication_destroyeventwindow(t_maxapplication *x);
 void CALLBACK maxapplication_posttimerevent(UINT uID, UINT uMsg, DWORD_PTR dwUser, DWORD_PTR dw1, DWORD_PTR dw2);
 void maxapplication_postshowfontpanel();
 
 static const TCHAR *s_event_window_classname = (const TCHAR*) T("MaxEventWindow");
 
 void maxapplication_registerclass()
 {
 WNDCLASS wc; 
 
 ZeroMemory(&wc, sizeof(wc)); 
 wc.style = 0;
 wc.lpfnWndProc = maxapplication_windowproc; 
 wc.cbClsExtra = 0; 
 wc.cbWndExtra = 0; 
 wc.hInstance = main_get_instance(); 
 wc.hIcon = 0; 
 wc.hCursor = 0; 
 wc.hbrBackground = 0; 
 wc.lpszMenuName = 0; 
 wc.lpszClassName = s_event_window_classname; 
 
 RegisterClass(&wc); 
 }
 
 void maxapplication_createeventwindow(t_maxapplication *x)
 {
 HWND hWnd; 
 HINSTANCE hInstance = main_get_instance(); 
 
 maxapplication_registerclass(); 
 
 hWnd = CreateWindow(s_event_window_classname, TEXT("EventWindow"), 
 0, 0, 0, 0, 0, 0, 0, hInstance, 0); 
 if (hWnd) {
 x->a_eventwindow = hWnd; 
 SetWindowLongPtr(hWnd, GWLP_USERDATA, (LONG_PTR) x); 
 }
 }
 
 void maxapplication_destroyeventwindow(t_maxapplication *x)
 {
 if (x && x->a_eventwindow) {
 DestroyWindow(x->a_eventwindow); 
 x->a_eventwindow = NULL; 
 }
 }
 
 static double s_last_process = 0.;
 
 void fontpanel_windows_dochoosefont();
 
 LRESULT CALLBACK maxapplication_windowproc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
 {
 switch (uMsg) {
 case MM_EVENT_TIMER:
 {
 t_maxapplication *x = (t_maxapplication*) GetWindowLongPtr(hWnd, GWLP_USERDATA); 
 if (x) {
 max_tick();
 s_last_process = systimer_gettime();
 InterlockedDecrement(&x->a_eventspending); 
 }
 return 0;
 }
 case MM_SHOW_FONTPANEL:
 {
 // when we show the font panel we do it in an async manner 
 // as this seems safest since showing the font panel is modal and 
 // once we call into it it won't actually return. 
 fontpanel_windows_dochoosefont(); 
 return 0; 
 }
 }
 return DefWindowProc(hWnd, uMsg, wParam, lParam); 
 }
 
 void CALLBACK maxapplication_posttimerevent(UINT uID, UINT uMsg, DWORD_PTR dwUser, DWORD_PTR dw1, DWORD_PTR dw2)
 {
 t_maxapplication *x = (t_maxapplication*) dwUser; 
 
 if (x->a_eventtimer != uID) {
 return;  // not our timer
 }
 
 // If we haven't handled the last event then skip this one.  
 if (x->a_eventspending > 0)
 return;
 
 if ((systimer_gettime()-s_last_process)>1.) {
 InterlockedIncrement(&x->a_eventspending);
 PostMessage(x->a_eventwindow, MM_EVENT_TIMER, 0, 0);
 }
 }
 
 void maxapplication_setupeventtimer(t_maxapplication *x)
 {
 long interval; 
 if (x && !x->a_eventwindow) {
 maxapplication_createeventwindow(x); 
 }
 if (x->a_eventtimer) {
 timeKillEvent(x->a_eventtimer); 
 x->a_eventtimerid++; 
 }
 interval = object_attr_getlong(ps_max->s_thing, ps_eventinterval); 
 if (interval < 1) 
 interval = 1; 
 x->a_eventtimer = timeSetEvent((DWORD) interval, 0, maxapplication_posttimerevent, (DWORD_PTR) x, TIME_PERIODIC | TIME_CALLBACK_FUNCTION);
 }
 
 void maxapplication_destroyeventtimer(t_maxapplication *x)
 {
 if (x && x->a_eventtimer) {
 x->a_eventtimerid++; 
 timeKillEvent(x->a_eventtimer); 
 x->a_eventtimer = NULL; 
 }
 maxapplication_destroyeventwindow(x);
 }
 
 
 */