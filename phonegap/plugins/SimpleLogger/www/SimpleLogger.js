function SimpleLogger(){ }

/**
 * Set the clipboard text
 *
 * @param {String} text The new clipboard content
 */
SimpleLogger.prototype.write = function(text) {
	 cordova.exec(function(winParam) {}, function(error) {}, "SimpleLogger","write",[text]);
}


/**
 * Register the plugin with PhoneGap
 */
cordova.addConstructor(function() {

	if(!window.plugins) window.plugins = {};
	ditty = new SimpleLogger();
});