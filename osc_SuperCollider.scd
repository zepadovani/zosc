//Receiving/sending data from/to PWGL through OSC/udp


// sending messages from SC to PWGL
a = NetAddr.new("127.0.0.1", 3005); // create the NetAddr
a.sendMsg("/hellopwgl", 1, 2.3, "a");// send an int, a float and a string

//by now, to send lists and similar structures, you need to be creative.. ;)
//here we'll send a list as string and need to convert from string to list in PWGL with 
l = [1,2,3,4,5,6];
f = {|list| list.asString.replace("[ ","(").replace(" ]",")").replace(",")};

a.sendMsg("/here_are_two_lists_as_strings", f.(l));


//receiving...	
// create the OSCresponderNode
o = OSCresponderNode(nil, '/hello/sc', {|...all| all.postln; } ).add; 

o.remove; // remove the OSCresponderNode when you are done.
