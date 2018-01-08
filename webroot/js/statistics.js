$(function ()
{
	var duration = 3000;
	
	var arrPath = (window.location.pathname).split('/');
	var urlStat = "/api/news_view/" + arrPath[arrPath.length - 1];

	function startRefreshStat()
	{
		setInterval(getStat, duration);
	}

	function getStat() {
		$.getJSON(urlStat, {
			format: "json"
		})
		.done(function(data) {
			var items = [];
			items.push("<li><small>View now: " + data[0] + "</small></li>");
			items.push("<li><small>View all: " + data[1] + "</small></li>");
			$('#statViewList').html(items.join(''));
		})
		.fail(function() {
			$('#statViewList').html('Error getting views statistics');
		});
	}

	getStat();
	startRefreshStat();

}());
