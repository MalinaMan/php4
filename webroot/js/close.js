$(document).ready(function() {
	$('a').on('mousedown', stopNavigate);
	$('a').on('mouseleave', function () {
           $(window).on('beforeunload', function() {
                return 'Are you sure you want to leave?';
           });
	});

	$('form#subscribe-form').submit(function() {
		$(window).unbind('beforeunload');
	});
});

function stopNavigate() {
	$(window).off('beforeunload');
};

$(window).on('beforeunload', function() {
	return 'Are you sure you want to leave?';
});
