<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,900,300);

	body {
		width: 100%;
		height: 100%;
		background-color: #263238;
		margin: 0;
		padding: 0;
		font-family: 'Roboto', Helvetica, Arial, sans-serif;
		color: #fff;
	}

	.widget-container {
		width: 1000px;
		height: 800px;
		display: block;
		background-color: #313e45;
		border-radius: 25px;
		margin: 0 auto;
		overflow: hidden; /* Prevents child elements from overflowing */
	}

	.top-left,
	.top-right,
	.bottom-left,
	.bottom-right {
		box-sizing: border-box; /* Include padding and border in element's total width and height */
	}

	.top-left {
		height: 60%;
		width: 50%;
		padding: 55px 0 0 70px;
		display: inline-block;
		box-sizing: border-box;
	}

	.top-right {
		height: 60%;
		width: 50%;
		float: right;
		padding: 55px 0 0 0;
		box-sizing: border-box;
	}

	.bottom-left {
		height: 40%;
		width: 45%;
		float: left;
		margin: 0;
		padding: 40px 0 0 50px;
		box-sizing: border-box;
	}

	.bottom-right {
		height: 80%;
		width: 55%;
		float: right;
		padding: 25px 0 0 60px;
		box-sizing: border-box;
	}

	h1, h2, h3, p {
		margin: 0;
		padding: 0;
	}
/* Top-left Div CSS */

#city {
	font-weight: 900;
	font-size: 25px;
}

#day {
	font-weight: 700;
	font-size: 25px;
	margin-top: 18px;
}

#date {
	font-weight: 500;
	font-size: 20px;
	margin-top: 4px;
}

#time {
	font-weight: 400;
	font-size: 18px;
	margin-top: 8px;
}

#codepen-link {
	font-weight: 400;
	font-size: 12px;
	margin-top: 20px;
}

.top-left > a {
	text-decoration: none;
	color: white;
}

.top-left > a:hover {
	color: #b0bec5;
}


/* Top-Right Div CSS */

#weather-status {
	font-size: 18px;
	font-weight: 300;
	text-align: center;
	margin: 0 auto;
}

.top-right > img {
	width: 120px;
	height: 120px;
	display: block;
	margin: 15px auto 0 auto;
}


/* Horizontal-Half-divider */

.horizontal-half-divider {
	width: 100%;
	height: 3px;
	margin-top: -5px;
	background-color: #263238;
}

.vertical-half-divider {
	width: 3px;
	position: absolute;
	height: 167px;
	background-color: #263238;
	float: right;
	display: inline-block;
	padding: 0;
}


/* Bottom-left CSS */

#temperature,
#celsius,
#temp-divider,
#fahrenheit {
	display: inline;
	vertical-align: middle;
}

#temperature {
	font-size: 60px;
	font-weight: 800;
	margin-right: 5px;
}

#celsius {
	margin-right: 10px;
}

#fahrenheit {
	margin-right: 5px;
	color: #b0bec5;
}

#celsius,
#temp-divider,
#fahrenheit {
	font-size: 30px;
	font-weight: 800;
}

#celsius:hover,
#fahrenheit:hover {
	cursor: pointer;
}




/* Bottom-Right CSS */

.other-details-key {
	float: left;
	font-size: 16px;
	font-weight: 300;
}

.other-details-values {
	float: left;
	font-size: 16px;
	font-weight: 400;
	margin-left: 40px;
}

.watermark-link {
	text-decoration:none;
	color:#b0bec5;
}

.watermark-link:hover {
	color:white;
	text-decoration:none;
}

.watermark {
	margin-top:10px;
	text-align:center;
	font-weight:400;
}</style>
<div class="wrapper">
	<div class="widget-container">
		<div class="top-left">
			<h1 class="city" id="city">Weather Widget App</h1>

			<h2 id="day">Day</h2>
			<h3 id="date">Month, Day Year</h3>
			<h3 id="time">Time</h3>
			<p class="geo"></p>
		</div>
		<div class="top-right">
			<h1 id="weather-status">Weather / Weather Status</h1>
			<img class="weather-icon" src="https://myleschuahiock.files.wordpress.com/2016/02/sunny2.png">
		</div>
		<div class="horizontal-half-divider"></div>
		<div class="bottom-left">
			<h1 id="temperature">${weather.temperature}</h1>
				<h2 id="celsius">&deg;C</h2>
		</div>
		<div class="vertical-half-divider"></div>
		<div class="bottom-right">
			<div class="other-details-key">
				<p>Country</p>
				<p>Country (ISO code)</p>
				<p>Time zone (Hours)</p>
				<p>Temperature (&#176;C)</p>
				<p>Feels like (&#176;C)</p>
				<p>Minimum temperature (&#176;C)</p>
				<p>Maximum temperature (&#176;C)</p>
				<p>weather</p>
				<p>Weather description</p>
				<p>Wind Speed</p>
				<p>Humidity</p>
				<p>Pressure</p>
			</div>
			<div class="other-details-values">
				<p>${weather.country}</p>
				<p>${weather.countryISOCode}</p>
				<p>${weather.timeZone}</p>
				<p>${weather.temperature}</p>
				<p>${weather.tempFeelsLike}</p>
				<p>${weather.tempMin}</p>
				<p>${weather.tempMax}</p>
				<p>${weather.weather}</p>
				<p>${weather.weatherDesc}</p>
				<p class="windspeed">${weather.wind}</p>
				<p class="pressure">${weather.pressure}</p>
				<p class="humidity">${weather.humidity}</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>