# appstate Module

## Description

This modules allows an app to ask for the current application state the app is in. Possible values are Foreground, Background and Inactive. It uses [UIApplication sharedApplication].applicationState to determine this.

## Accessing the appstate Module

First register your module with your application by editing `tiapp.xml` and adding your module:

<modules>
	<module platform="iphone">com.yellowdice.appstate</module>
</modules>

To access this module from JavaScript, you would do the following:

    var appstate = require("com.yellowdice.appstate");

The appstate variable is a reference to the Module object.

### appstate.methods


appstate.inBackground()
appstate.inForeground()
appstate.inactive()

## Usage

See app.js in ./example

## Author

Steven van Loef (@ludolphus), January 2016

## License

Apache