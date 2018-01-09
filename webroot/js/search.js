$(function ()
{

	var urlAPIsearch = "/api/search_tag/";
	var inputElement = $("#inputTagField");

	inputElement.on("input", function (e)
		{
			$.getJSON(urlAPIsearch + inputElement.val())
			
			.done(function(data) {
				if (!data.length) {
					return;
				}

				if (data.length == 1) {
					inputElement.val(data[0].name);
				} else {
					var availableTags = data.map(function(d) {
						return d['name'];
					});
					inputElement.autocomplete({
						source: availableTags
					});
				}
			})

			.fail(function(error) {
				console.log('error: ' + error);
			});
		}
	);

}());