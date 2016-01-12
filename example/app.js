// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.

var appstate = require('com.yellowdice.appstate');
Ti.API.info("module is => " + appstate);

Ti.API.info("appstate inBackground => " + appstate.inBackground());
Ti.API.info("appstate inForeground => " + appstate.inForeground());
Ti.API.info("appstate inactive => " + appstate.inactive());
