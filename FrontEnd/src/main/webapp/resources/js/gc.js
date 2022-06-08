/**
 * 
 */

// Get The Date
var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
var dayNames = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

function checkTime() {
	var date = new Date();
	var sufix = '';
	var hours = ('0' + date.getHours()).slice(-2);
	var minutes = ('0' + date.getMinutes()).slice(-2);
	var day = date.getDate();
	var month = monthNames[date.getMonth()];
	var weekday = dayNames[date.getDay()];
	var year = date.getFullYear();
	if (day > 3 && day < 21) sufix = 'th';
	switch (day % 10) {
		case 1:
			sufix = "st";
		case 2:
			sufix = "nd";
		case 3:
			sufix = "rd";
		default:
			sufix = "th";
	}
	document.getElementById('time').innerHTML = weekday + ' ' + day + sufix + ', ' + month + ' ' + year;
}
setInterval(checkTime(), 1000);





// Dark Mode Switcher
// Source: https://dev.to/ananyaneogi/create-a-dark-light-mode-switch-with-css-variables-34l8
const toggleSwitch = document.querySelector('.dark_mode_switch input[type="checkbox"]');

function switchTheme(e) {
	if (e.target.checked) {
		document.documentElement.setAttribute('data-theme', 'dark');
	} else {
		document.documentElement.setAttribute('data-theme', 'light');
	}
}
toggleSwitch.addEventListener('change', switchTheme, false);

// Store the user preference for future visits
function switchTheme(e) {
	if (e.target.checked) {
		document.documentElement.setAttribute('data-theme', 'dark');
		localStorage.setItem('theme', 'dark');
	} else {
		document.documentElement.setAttribute('data-theme', 'light');
		localStorage.setItem('theme', 'light');
	}
}

// Check for saved user preference, if any, load on website reopening
const currentTheme = localStorage.getItem('theme');
if (currentTheme) {
	document.documentElement.setAttribute('data-theme', currentTheme);

	if (currentTheme === 'dark') {
		toggleSwitch.checked = true;
	}
}

var data = [
      { y: '2014', a: 50, b: 90},
      { y: '2015', a: 65,  b: 75},
      { y: '2016', a: 50,  b: 50},
      { y: '2017', a: 75,  b: 60},
      { y: '2018', a: 80,  b: 65},
      { y: '2019', a: 90,  b: 70},
      { y: '2020', a: 100, b: 75},
      { y: '2021', a: 115, b: 75},
      { y: '2022', a: 120, b: 85},
      { y: '2023', a: 145, b: 85},
      { y: '2024', a: 160, b: 95}
    ],
    config = {
      data: data,
      xkey: 'y',
      ykeys: ['a', 'b'],
      labels: ['Total Income', 'Total Outcome'],
      fillOpacity: 0.6,
      hideHover: 'auto',
      behaveLikeLine: true,
      resize: true,
      pointFillColors:['#ffffff'],
      pointStrokeColors: ['black'],
      lineColors:['gray','red']
  };
config.element = 'area-chart';
Morris.Area(config);
config.element = 'line-chart';
Morris.Line(config);
config.element = 'bar-chart';
Morris.Bar(config);
config.element = 'stacked';
config.stacked = true;
Morris.Bar(config);
Morris.Donut({
  element: 'pie-chart',
  data: [
    {label: "Friends", value: 30},
    {label: "Allies", value: 15},
    {label: "Enemies", value: 45},
    {label: "Neutral", value: 10}
  ]
});
