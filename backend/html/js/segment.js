/*
	jq.Segment - v0.1
	By Daniel Seripap, daniel@seripap.com
	----------------------------------------
	Lightweight jQuery Plugin that grabs URL Segments.

	USAGE:
	Example URL: http://www.seripap.com/a/b/c

	$.segment() - returns a,b,c
	$.segment(1) - returns a
	$.segment(2) - returns b
	$.segment(3) - returns c
*/(function(e){"use strict";Array.prototype.clean=function(e){for(var t=0;t<this.length;t++)if(this[t]===e){this.splice(t,1);t--}return this};e.segment=function(e){var t=window.location.pathname,n=t.split("/"[0]).clean("");return e?n[e-1]:n.toString()}})(jQuery);
