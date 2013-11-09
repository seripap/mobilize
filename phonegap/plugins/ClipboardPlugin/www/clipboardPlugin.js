/* Clipboard plugin for PhoneGap
 * 
 * @constructor
 */
function ClipboardPlugin(){ }

/**
 * Set the clipboard text
 *
 * @param {String} text The new clipboard content
 */
ClipboardPlugin.prototype.setText = function(text) {
	 cordova.exec(function(winParam) {}, function(error) {}, "ClipboardPlugin","setText",[text]);
}

/**
 * Get the clipboard text
 *
 * @param {String} text The new clipboard content
 */
ClipboardPlugin.prototype.getText = function(callback) {
	return cordova.exec(function(winParam) {}, function(error) {}, "ClipboardPlugin", "getText", []);
}

/**
 * Register the plugin with PhoneGap
 */
cordova.addConstructor(function() {
	if(!window.plugins) window.plugins = {};
	window.plugins.clipboardPlugin = new ClipboardPlugin();
});
