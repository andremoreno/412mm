//= require js/include/jquery.js
//= require js/include/stayInWebApp.js
//= require js/include/swipebox.js
//= require js/include/pace.js

/*! gaug.es */
var _gauges = _gauges || [];
(function() {
	var t   = document.createElement('script');
	t.type  = 'text/javascript';
	t.async = true;
	t.id    = 'gauges-tracker';
	t.setAttribute('data-site-id', '56a7b643bb922a32f6000995');
	t.setAttribute('data-track-path', '//track.gaug.es/track.gif');
	t.src = '//d36ee2fcip1434.cloudfront.net/track.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(t, s);
})();

(function($) {
	$('.swipebox').swipebox();
})(jQuery);

$(function() {
    $.stayInWebApp();
});