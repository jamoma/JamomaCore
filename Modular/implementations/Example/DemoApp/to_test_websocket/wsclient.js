 var settings = {
        host: 'ws://localhost:9001'
    };

    ws = new WebSocket(settings.host);

    ws.onopen = function() {
        console.log('open');
    };
	
    ws.onclose = function() {
        console.log('close');
    };

    ws.onmessage = function(msg) {
        console.log("received : ", msg.data);
        var data = JSON.parse(msg.data);
    };

    document.getElementById('texte').addEventListener('change', function(event){
        
		//var message = { sender:"telecommande", operation:"?get", "/myParameter":null };
        //var message = { sender:"telecommande", operation:"?get", "/myParameter:type":null };
 		var message = { sender:"telecommande", operation:"set", "/myParameterString":"toto" };
 		// var message = { sender:"telecommande", operation:"?namespace", "/myParameter/tes":null };
 		//var message = { sender:"telecommande", operation:"?namespace_all", "/":null };
 		// var message = { sender:"telecommande", operation:"?listen", "/myParameter":true };
 		console.log("send : ", JSON.stringify(message));
        //ws.send(JSON.stringify(message));
		ws.send("teeeeeest");
        //ws.send(this.value);
    });