<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>news</title>
     <!-- 배경 css, 배경 js -->
	<link rel="stylesheet"
		href="${ pageContext.request.contextPath }/resources/css/main.css">
    <script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>
    
    <!-- 예측 css, js -->
    <link rel="stylesheet"
		href="${ pageContext.request.contextPath }/resources/css/prediction.css">
		
	<style type="text/css">
		#line-chart::before {
		  content: "";
		  position: absolute;
		  display: block;
		  width: 800px;
		  height: 50px;
		  left: 50%;
		  top: 87.5%;
		  transform: translate(-40%);
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		}
	</style>
		
	<style type="text/css">
		*,
		*:after,
		*:before {
		  box-sizing: border-box;
		}
		
		:root {
		  --primary-color: #2a2a2a;
		  --secondary-color: #743e0d;
		  --white-color: white;
		  --green-color: #439c47;
		  --transition-animation: all .5s;
		}
		
		body {
		  font-family: "Crimson Text", serif;
		  font-size: 16px;
		  color: var(--primary-color);
		  background-color: var(--white-color);
		  margin: 10px;
		}
		
		a {
		  color: var(--primary-color);
		  text-decoration: none;
		  transition: var(--transition-animation);
		}
		a:hover, a:visited, a:focus {
		  color: var(--primary-color);
		}
		
		p {
		  margin-top: 0;
		  margin-bottom: 20px;
		  text-align: justify;
		  text-justify: inter-word;
		}
		
		.menu {
		  margin: 0px auto;
		  padding: 0;
		  list-style: none;
		  display: table;
		  width: 780px;
		  text-align: center;
		}
		.menu-list {
		  display: table-cell;
		  position: relative;
		  padding:15px 0;
		  margin: 15px 0;
		  width: 130px;
		}
		
		/**************************************
		    Header of Paper
		**************************************/
		header {
		  text-align: center;
		  position: relative;
		}
		header h1.news_paper_title {
		  margin: 0;
		}
		header h1.news_paper_title a {
		  font-family: "Playfair Display", serif;
		  font-weight: 900;
		  font-size: 60px;
		  text-transform: uppercase;
		  display: inline-block;
		  line-height: 60px;
		  margin: 15px 0;
		  cursor: pointer;
		  color: var(--primary-color);
		  transition: var(--transition-animation);
		}
		header h1.news_paper_title a:hover {
		  color: var(--secondary-color);
		}
		header .news_paper_location {
		  font-weight: 600;
		  border-bottom: 1px solid var(--primary-color);
		  border-top: 1px solid var(--primary-color);
		  padding: 10px 0 10px 0;
		  margin: 20px 0;
		}
		
		@media only all and (max-width: 600px) {
		  header h1.news_paper_title a {
		    font-size: 40px;
		    line-height: 40px;
		    margin: 5px 0;
		  }
		}
		/**************************************
		    Content Area of Newspaper
		**************************************/
		.headline {
		  text-align: center;
		  line-height: normal;
		  font-family: "Playfair Display", serif;
		  display: block;
		  margin: 0 auto;
		}
		.headline h2.title {
		  font-weight: 400;
		  font-style: italic;
		  font-size: 22px;
		}
		.headline h2.title:hover {
		  color: var(--secondary-color);
		}
		.headline h3.writer {
		  font-weight: 700;
		  font-size: 12px;
		}
		.headline h3.writer:hover {
		  color: var(--secondary-color);
		}
		.headline h3.writer:before {
		  border-top: 1px solid var(--primary-color);
		  content: "";
		  width: 100px;
		  height: 7px;
		  display: block;
		  margin: 0 auto;
		}
		.headline h3.writer:after {
		  border-bottom: 1px solid var(--primary-color);
		  content: "";
		  width: 100px;
		  height: 10px;
		  display: block;
		  margin: 0 auto;
		}
		
		.button a {
		  display: inline-block;
		  background: transparent;
		  border: 1px solid var(--primary-color);
		  color: var(--primary-color);
		  font-size: 16px;
		  padding: 10px 15px;
		}
		.button a:hover, .button a:focus, .button a:active {
		  background: var(--green-color);
		  border: 1px solid var(--green-color);
		  color: var(--white-color);
		}
		
		/**************************************
		    Images & iframes
		**************************************/
		figure {
		  cursor: pointer;
		  margin: 0 0 20px;
		  filter: grayscale(100%);
		  transition: var(--transition-animation);
		}
		figure img {
		  max-width: 100%;
		  height: auto;
		}
		figure figcaption {
		  font-style: italic;
		  font-size: 12px;
		  text-align: left;
		  transition: var(--transition-animation);
		}
		figure figcaption:hover {
		  padding-left: 10px;
		}
		figure:hover {
		  filter: grayscale(0);
		}
		
		/***************************************************
		    Responsive Framework
		    https://codepen.io/HikwaMehluli/full/qeNOVv
		***************************************************/
		.the-grid-section {
		  max-width: 1500px;
		  margin: 0 auto;
		  width: 100%;
		}
		.the-grid-section .the-grid {
		  margin-bottom: 40px;
		  transition: all 0.5s;
		}
		.the-grid-section .the-grid .the-grid-content p {
		  display: -webkit-box;
		  -webkit-line-clamp: 5;
		  -webkit-box-orient: vertical;
		  overflow: hidden;
		}
		
		/* the flexbox magic */
		@media screen and (min-width: 768px) {
		  .the-grid-section {
		    display: flex;
		    flex-wrap: wrap;
		    justify-content: space-between;
		  }
		
		  .the-grid {
		    display: flex;
		    flex: 0 1 calc(100% - .5em);
		  }
		}
		@media screen and (min-width: 1000px) {
		  .the-grid {
		    flex: 0 1 calc(100% - 1em);
		  }
		}
		@media screen and (min-width: 1500px) {
		  .the-grid {
		    flex: 0 1 calc(100% - 1em);
		  }
		}
		
		ul {
		  margin: 5px auto 0;
		  padding: 0;
		  list-style: none;
		  display: table;
		  width: 600px;
		  text-align: center;
		}
		li {
		  display: table-cell;
		  position: relative;
		  padding: 15px 0;
		}
		
		h5 {
		  text-align: center;
		}
		#chart-name1{
		  font-family: 'S-CoreDream-6Bold';
		  font-size: 24px;
		}
		#chart-name2{
		  font-family: 'S-CoreDream-6Bold';
		  font-size: 24px;
		}
		
		#line-chart {
		  width: 800px;
		  height: 500px;
		  position: relative;
		  left: 50%;
		  transform: translate(-50%);
		  flex: 0 1 calc(100% - 1em);
		}
		#line-chart::before {
		  content: "";
		  position: absolute;
		  display: block;
		  width: 550px;
		  height: 45px;
		  left: 47%;
		  top: 85%;
		  transform: translate(-40%);
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		}
		#line-chart2 {
		  width: 800px;
		  height: 500px;
		  position: relative;
		  left: 50%;
		  transform: translate(-50%);
		  flex: 0 1 calc(100% - 1em);
		}
		#line-chart2::before {
		  content: "";
		  position: absolute;
		  display: block;
		  width: 550px;
		  height: 45px;
		  left: 47%;
		  top: 85%;
		  transform: translate(-40%);
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		}
		
		#message {
		  font-family: 'S-CoreDream-6Bold';
		  margin-top: 20px;
		  padding-top: 10px;
		  font-size: 30px;
		  text-align: center;
		}
		#message1 {
		  font-family: 'S-CoreDream-6Bold';
		  font-size: 30px;
		  text-align: center;
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		  margin-top: 30px;
		  margin-bottom: 30px;
		
		}
		
		#message1::after {
		  animation-duration: 1s;
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		  margin-top: 40px;
		  margin-bottom: 30px;
		}
		.prediction-graph{
		  margin: 0px auto;
		}
		
		.main {
		  margin: 0px auto;
		}
		
		@font-face {
		     font-family: 'S-CoreDream-6Bold';
		     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
		     font-weight: normal;
		     font-style: normal;
		}
		
		@font-face {
		     font-family: 'S-CoreDream-9Black';
		     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-9Black.woff') format('woff');
		     font-weight: normal;
		     font-style: normal;
		}
		
		@font-face {
		     font-family: 'Noto Sans KR', sans-serif;
		     src: url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap');
		}
				
	
	</style>
    <script src="${ pageContext.request.contextPath }/resources/js/prediction.js"></script>
  </head>
  <body>
   <header>
    	<h1 class="news_paper_title">
    		<a href="home.do">SOCOM TIMES</a>
    	</h1>
      <div class="news_paper_location">
        <ul>
          <li><a href="home.do">Home</a></li>
          <li><a href="question_page.do">About</a></li>
          <li><a href="graph_page.do">Keyword</a></li>
          <li><a href="gc_page.do">Causality</a></li>
          <li><a href="prediction_page.do">Prediction</a></li>
          <li><a href="emotion_page.do">Public Opinion</a></li>
        </ul>
      </div>
    </header>

    <h3 class="msg" id = "message">
      Click The Graph!
    </h3>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <div class="prediction-graph" style="width: 100%">
      <main class="chart" style = "width: 50%; float: left;">
        <h5 id="chart-name1">이재명 지지율 예측</h5>
        <div id="line-chart" style= "margin-right: 1px"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            var rateData = google.visualization.arrayToDataTable([
              ['Week', 'SOCOM', "KSOI", '피플네트웍스'],
             /*  ['10월 2주차', null, 35.8, null],
              ['10월 3주차', null, 35.4, null],
              ['10월 4주차', null, 37.5, null],
              ['10월 5주차', null, 36.5, null],

              ['11월 1주차', null, 47.3, null], */
              ['11월 2주차', 35.4405, 36.0, 33.3],
              ['11월 3주차', 38.3223, 39.5, 37.1],
              ['11월 4주차', 39.9865, 39.0, 35.5],

              ['12월 1주차', 40.4768, 37.9, 39],
              ['12월 2주차', 41.8254, 40.6, 37.5],
              ['12월 3주차', 40.1328, 40.3, 40.9],
              ['12월 4주차', 41.0474, 37.6, 46.7],

              ['01월 1주차', 39.9991, 41.0, 40.5],
              ['01월 2주차', 43.3179, 37.6, 38.5],
              ['01월 3주차', 43.3797, 36.2, 33.8],
              ['01월 4주차', 46.5065, 33.8, 39.7],
              ['01월 5주차', 44.0812, 37.9, 39.7],

              ['02월 1주차', 42.4978, 38.4, 37.7],
              ['02월 2주차', 38.8754, 40.4, 42],
              ['02월 3주차', 40.2916, 43.7, 39.8],
              ['02월 4주차', 41.4869, 43.2, 41],

              ['03월 1주차', 44.8376, 47.0, 42.5],
              ['03월 2주차', 40.4332, 46.6, null]
            ]);

            var lineOptions = {
              chart: {
                title: "이재명 지지율 예측"
              },
              backgroundColor: 'transparent',
              colors: ['3E65E6', '50A8EB', 'B4D9FA'],
              lineWidth: 3,
              fontName: 'Open Sans',
              focusTarget: 'category',
              chartArea: {
                left: 50,
                top: 10,
                width: '100%',
                height: '70%'
              },
              hAxis: {
                //showTextEvery: 12,
                textStyle: {
                  fontSize: 11
                },
                baselineColor: 'transparent',
                gridlines: {
                  color: 'transparent'
                }
              },
              vAxis: {
                minValue: 0,
                maxValue: 50,
                baselineColor: '#DDD',
                gridlines: {
                  color: '#DDD',
                  count: 4
                },
                textStyle: {
                  fontSize: 11
                }
              },
              legend: {
                position: 'bottom',
                textStyle: {
                  fontSize: 24
                }
              },
              animation: {
                duration: 800,
                easing: 'out',
                startup: true
              }
            };

            var lineChart = new google.visualization.LineChart(document.getElementById('line-chart'));
            // lineChart.draw(zeroLineData, lineOptions);
            lineChart.draw(rateData, lineOptions);

            // Add our selection handler
            google.visualization.events.addListener(lineChart,'select',selectHandler);

            function selectHandler(){
                var selection = lineChart.getSelection();

                var message = '';
                for (var i = 0; i < selection.length; i++) {
                  var item = selection[i];
                  var idx = item.row;

                  // alert(rateData.row[idx])
                  // alert(rateData.getFormattedValue(item.row))
                  if (idx != null) {
                    // alert(idx)
                    date = rateData.getValue(idx, 0); // 기간
                    rate1 = rateData.getValue(idx, 1); // SOCOM 지지율
                    rate2 = rateData.getValue(idx, 2); // KSOI 지지율
                    rate3 = rateData.getValue(idx, 3); // A 지지율
                    //var str = rateData.getProperties(idx)
                    //alert(date + ' 이재명 지지율: ' + rate1 + ' 윤석열 지지율: ' + rate2)
                    changeData1();
                  }
                }
            }
          }
          function changeData1(){
            var tmp_period = document.getElementById('message1');
            tmp_period.innerText = date;
            if (date){
              var tmp_keword = document.getElementById('message1');
              tmp_keword.innerText = "'10월 2주차'부터 " + "'" + date + "'의 데이터로\n예측한 '이재명' 후보의 지지율은 " + rate1 + "% 입니다.";
              var tmp_msg = document.getElementById('message');
              tmp_msg.innerText = "소컴소컴 최종 지지율, '윤석열 우세!'";
            }
          }
        </script>
      </main>
      <main class="chart" style = "width: 50%; float: right;">
        <h5 id="chart-name2">윤석열 지지율 예측</h5>
        <div id="line-chart2" style= "margin-right: 1px"></div>
        <script type="text/javascript">
          google.load("visualization", "1", {packages:["corechart"]});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            var rateData = google.visualization.arrayToDataTable([
              ['Week', 'SOCOM', "KSOI", '피플네트웍스'],
             /*  ['10월 2주차', null, 33.2, null],
              ['10월 3주차', null, 37.1, null],
              ['10월 4주차', null, 33.6, null],
              ['10월 5주차', null, 36.6, null],

              ['11월 1주차', null, 35.2, null], */
              ['11월 2주차', 39.3459, 50.2, 48.2],
              ['11월 3주차', 33.8064, 40.0, 45.3],
              ['11월 4주차', 39.2291, 39.0, 46.7],

              ['12월 1주차', 41.592, 41.2, 42.8],
              ['12월 2주차', 40.9631, 42.0, 47.9],
              ['12월 3주차', 40.3904, 37.4, 44.2],
              ['12월 4주차', 40.8337, 35.8, 42.1],

              ['01월 1주차', 44.0599, 37.1, 40.9],
              ['01월 2주차', 38.8099, 35.2, 37.7],
              ['01월 3주차', 40.2188, 41.4, 44.8],
              ['01월 4주차', 32.9844, 43.8, 45.1],
              ['01월 5주차', 41.9776, 41.6, 45.1],

              ['02월 1주차', 36.0603, 44.6, 48],
              ['02월 2주차', 37.2961, 43.5, 50],
              ['02월 3주차', 42.4706, 42.2, 47.6],
              ['02월 4주차', 41.4704, 45.0, 43.8],

              ['03월 1주차', 32.329, 46.5, 46.5],
              ['03월 2주차', 41.8684, 46.1, null]
            ]);

            var lineOptions = {
              chart: {
                title: "윤석열 지지율 예측"
              },
              backgroundColor: 'transparent',
              colors: ['E01300', 'F07E73', 'FDE1DC'],
              lineWidth: 3,
              fontName: 'Open Sans',
              focusTarget: 'category',
              chartArea: {
                left: 50,
                top: 10,
                width: '100%',
                height: '70%'
              },
              hAxis: {
                //showTextEvery: 12,
                textStyle: {
                  fontSize: 11
                },
                baselineColor: 'transparent',
                gridlines: {
                  color: 'transparent'
                }
              },
              vAxis: {
                minValue: 20,
                maxValue: 50,
                baselineColor: '#DDD',
                gridlines: {
                  color: '#DDD',
                  count: 4
                },
                textStyle: {
                  fontSize: 11
                }
              },
              legend: {
                position: 'bottom',
                textStyle: {
                  fontSize: 24
                }
              },
              animation: {
                duration: 800,
                easing: 'out',
                startup: true
              }
            };

            var lineChart = new google.visualization.LineChart(document.getElementById('line-chart2'));
            // lineChart.draw(zeroLineData, lineOptions);
            lineChart.draw(rateData, lineOptions);

            // Add our selection handler
            google.visualization.events.addListener(lineChart,'select',selectHandler);

            function selectHandler(){
                var selection = lineChart.getSelection();

                var message = '';
                for (var i = 0; i < selection.length; i++) {
                  var item = selection[i];
                  var idx = item.row;

                  // alert(rateData.row[idx])
                  // alert(rateData.getFormattedValue(item.row))
                  if (idx != null) {
                    // alert(idx)
                    date = rateData.getValue(idx, 0); // 기간
                    rate1 = rateData.getValue(idx, 1); // SOCOM 지지율
                    rate2 = rateData.getValue(idx, 2); // KSOI 지지율
                    rate3 = rateData.getValue(idx, 3); // A 지지율
                    //var str = rateData.getProperties(idx)
                    //alert(date + ' 이재명 지지율: ' + rate1 + ' 윤석열 지지율: ' + rate2)
                    changeData2();
                  }
                }
              }
            }
          function changeData2(){
            var tmp_period = document.getElementById('message1');
            tmp_period.innerText = date;
            if (date){
              var tmp_keword = document.getElementById('message1');
              tmp_keword.innerText = "'10월 2주차'부터 " + "'" + date + "'의 데이터로\n예측한 '윤석열' 후보의 지지율은 " + rate1 + "% 입니다.";
              var tmp_msg = document.getElementById('message');
              tmp_msg.innerText = "소컴소컴 최종 지지율, '윤석열 우세!'";
            }
          }
        </script>
      </main>
      <p style="clear:both;"></p>
    </div>

    <p style="clear:left;"></p>
    <div class="msg" id = "message1">

    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="prediction.js"></script>
  </body>
</html>
