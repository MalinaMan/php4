$(function ()
{

	var time = 0, duration = 1000, delay = 15, disabled = false, clockTime = null;
	var urlAPI_timer = "/api/session/timer_subscribe",
		urlAPI_timer_off = "/api/session_set/timer_subscribe_success";

	function startCheck()
	{
		$.get(urlAPI_timer + "_success", function (r) {
			disabled = r;
		});
		getStartTime();

		if (!clockTime && !disabled) {
			clockTime = setInterval(checkTime, duration);  // every second
		}
	}

	function stopTime()
	{
		clearInterval(clockTime);
		clockTime = null;
	}

	function getStartTime()
	{
		$.get(urlAPI_timer, function (r) {
			time = r;
		});
	}

	function checkTime()
	{
		let momentCome = (~~((new Date()).getTime()/1000-time) >= delay);
		if (momentCome || disabled) {
			stopTime();
		}
		if (momentCome && !disabled) {
			openModalForm();
		}
	}

	function openModalForm()
	{
		var modal = $("#subscribeModal");
		modal.css('display', 'block');
		
		$('.close').on("click", function() {
			modal.css('display', 'none');
			$.ajax({
			  method: "POST",
			  url: urlAPI_timer_off,
			  data: {value: "1"}
			});
		});

		window.onclick = function(event) {
			if (event.target == modal[0]) {
				modal.css('display', 'none');
			}
		}
	}

	startCheck();

}());