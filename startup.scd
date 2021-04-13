// Get the default server's options



s.options.device ="ASIO : Focusrite USB ASIO";     // use a specific soundcard



s.options.device;
//s.options.numOutputBusChannels_(2);
s.options.numInputBusChannels_(2);
s.options.sampleRate_(48000);
//s.options.sampleRate_(44100);
s.options.memSize_(2.pow(20));
s.options.blockSize = 64;


//if Focusrite is present set low buffer size
if( ServerOptions.devices.includesEqual("ASIO : Focusrite USB ASIO"),
	{
		s.options.device = "ASIO : Focusrite USB ASIO";
 s.options.hardwareBufferSize = 128;
	},
	{

 s.options.device = "Windows WASAPI";

 //s.options.blockSize = 1024;
 s.options.hardwareBufferSize = 1024;
});

// finally, boot the server

Server.default.boot;


1/64
