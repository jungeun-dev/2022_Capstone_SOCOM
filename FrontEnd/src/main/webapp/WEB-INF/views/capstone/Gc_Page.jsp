<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>news</title>
    
    <!-- main -->
    <!-- 배경 css, 배경 js -->
	<link rel="stylesheet"
			href="${ pageContext.request.contextPath }/resources/css/main.css">
			
	<script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>
	 
	 <!-- gc css, js -->
    <link rel="stylesheet"
		href="${ pageContext.request.contextPath }/resources/css/gc.css">
	<script src="${ pageContext.request.contextPath }/resources/js/gc.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/gc_plus.js"></script>
    
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
		  -ms-overflow-style: none;
		}
		
		::-webkit-scrollbar {
		  display: none;
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
		
		/***************************************************
		    Responsive Framework
		    https://codepen.io/HikwaMehluli/full/qeNOVv
		***************************************************/
		
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
		
		
		.prediction-graph{
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
		h5 {
		  text-align: center;
		}
		
		.chart-name{
		  font-family: 'S-CoreDream-6Bold';
		  font-size: 24px;
		
		}
		
		.line-chart {
		  width: 800px;
		  height: 500px;
		  position: relative;
		  left: 50%;
		  transform: translate(-50%);
		  flex: 0 1 calc(100% - 1em);
		}
		.line-chart::before {
		  content: "";
		  position: absolute;
		  display: block;
		  width: 550px;
		  height: 45px;
		  left: 40%;
		  top: 90%;
		  transform: translate(-40%);
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		}
		
		#column-chart1 {
		  width: 800px;
		  height: 500px;
		  position: relative;
		  left: 50%;
		  transform: translate(-50%);
		  flex: 0 1 calc(100% - 1em);
		}
		#column-chart1::before {
		  content: "";
		  position: absolute;
		  display: block;
		  width: 240px;
		  height: 30px;
		  left: 50%;
		  top: 87.5%;
		  transform: translate(-40%);
		  background: #FAFAFA;
		  box-shadow: 1px 1px 0 0 #DDD;
		  flex: 0 1 calc(100% - 1em);
		}
		#column-chart2 {
		  width: 800px;
		  height: 500px;
		  position: relative;
		  left: 50%;
		  transform: translate(-50%);
		  flex: 0 1 calc(100% - 1em);
		}
		#column-chart2::before {
		  content: "";
		  position: absolute;
		  display: block;
		  width: 240px;
		  height: 30px;
		  left: 50%;
		  top: 87.5%;
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
		
		.gc{
		  margin: 0px auto;
		}
    	
    
    </style>
    
 
  </head>
  <body>
    <!-- 배경 -->
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
    
    <div class="gc" style="width: 100%; height: 100%;">
      <main class="no1" style = "width: 50%; float: left;">
        <h5 class = "chart-name" id="bar-chart-name1">이재명 후보의 선거 이슈</h5>
          <div id="column-chart1" style="margin-right: 1px"></div>
          <script type="text/javascript">
              google.charts.load('current', {'packages':['corechart']});
              google.charts.setOnLoadCallback(drawChart);
              function drawChart() {
                var data1 = google.visualization.arrayToDataTable(no1_bar_data);

                var view = new google.visualization.DataView(data1);

                view.setColumns([0, 1,
                                { calc: "stringify",
                                  sourceColumn: 1,
                                  type: "string",
                                  role: "annotation" },
                                2]);

                var colChart = new google.visualization.ColumnChart(document.getElementById("column-chart1"));

                colChart.draw(view, no1_barOptions);
                // Add our selection handler
                google.visualization.events.addListener(colChart,'select',selectHandler);

                function selectHandler(){
                    var selection = colChart.getSelection();

                    var message = '';
                    for (var i = 0; i < selection.length; i++) {
                      var item = selection[i];
                      var idx = item.row;

                      if (idx != null) {
                        label = data1.getValue(idx, 0); // 키워드
                        p_value = data1.getValue(idx, 1); // P-Value

                        changeData1();
                      }
                      if (label) {
                        document.getElementById("tmp-1").style.display="none";

                        document.getElementById("no1-keyword-chart-1").style.display="none";
                        document.getElementById("no1-keyword-chart-2").style.display="none";
                        document.getElementById("no1-keyword-chart-3").style.display="none";
                        document.getElementById("no1-keyword-chart-4").style.display="none";
                        document.getElementById("no1-keyword-chart-5").style.display="none";
                        document.getElementById("no1-keyword-chart-6").style.display="none";
                        document.getElementById("no1-keyword-chart-7").style.display="none";
                        document.getElementById("no1-keyword-chart-8").style.display="none";
                      }

                      if (label == '대장동') {
                        document.getElementById("no1-keyword-chart-1").style.display="block";
                      }
                      else if (label == '이낙연'){
                        document.getElementById("no1-keyword-chart-2").style.display="block";
                      }
                      else if (label == '여론조작'){
                        document.getElementById("no1-keyword-chart-3").style.display="block";
                      }
                      else if (label == '토론'){
                        document.getElementById("no1-keyword-chart-4").style.display="block";
                      }
                      else if (label == '부동산'){
                        document.getElementById("no1-keyword-chart-5").style.display="block";
                      }
                      else if (label == '유승민'){
                        document.getElementById("no1-keyword-chart-6").style.display="block";
                      }
                      else if (label == '특검'){
                        document.getElementById("no1-keyword-chart-7").style.display="block";
                      }
                      else if (label == '게이트'){
                        document.getElementById("no1-keyword-chart-8").style.display="block";
                      }
                    }
                }
              }

              function changeData1(){
                var tmp_period = document.getElementById('line-chart-name1');
                tmp_period.innerText = label;
                if (label){
                  var tmp_keword = document.getElementById('line-chart-name1');
                  tmp_keword.innerText = "이재명 후보의 지지율과 '" + label + "' 언급 빈도 변화량";
                }
              }

            </script>
      </main>
      <main class="chart" style = "width: 50%; float: right;">
        <h5 class = "chart-name" id="line-chart-name1">이재명 후보의 지지율과 '대장동' 언급 빈도 변화량</h5>

        <div class = "line-chart" id="no1-keyword-chart-1" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 대장동
            var rateData = google.visualization.arrayToDataTable(no1_keyword1_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-1'));

            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div id="tmp-1" style= "width: 100%; height: 1000px;"></div>

        <div class = "line-chart" id="no1-keyword-chart-2" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 이낙연
            var rateData = google.visualization.arrayToDataTable(no1_keyword2_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-2'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no1-keyword-chart-3" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 여론조작
            var rateData = google.visualization.arrayToDataTable(no1_keyword3_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-3'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no1-keyword-chart-4" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 토론
            var rateData = google.visualization.arrayToDataTable(no1_keyword4_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-4'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no1-keyword-chart-5" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 부동산
            var rateData = google.visualization.arrayToDataTable(no1_keyword5_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-5'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no1-keyword-chart-6" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 유승민
            var rateData = google.visualization.arrayToDataTable(no1_keyword6_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-6'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no1-keyword-chart-7" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 특검
            var rateData = google.visualization.arrayToDataTable(no1_keyword7_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-7'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no1-keyword-chart-8" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 게이트
            var rateData = google.visualization.arrayToDataTable(no1_keyword8_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no1-keyword-chart-8'));
            lineChart.draw(rateData, no1_lineOptions);
          }
        </script>

      </main>
    </div>
    <p style="clear:both;"></p>

    <div class="gc" style="width: 100%; height: 100%;">
      <main class="no2" style = "width: 50%; float: left;">
        <h5 class = "chart-name" id="bar-chart-name2">윤석열 후보의 선거 이슈</h5>
          <div id="column-chart2" style="margin-right: 1px"></div>
          <script type="text/javascript">
              google.charts.load('current', {'packages':['corechart']});
              google.charts.setOnLoadCallback(drawChart);
              function drawChart() {

                var data2 = google.visualization.arrayToDataTable(no2_bar_data);

                var view = new google.visualization.DataView(data2);
                view.setColumns([0, 1,
                                { calc: "stringify",
                                  sourceColumn: 1,
                                  type: "string",
                                  role: "annotation" },
                                2]);

                var colChart = new google.visualization.ColumnChart(document.getElementById("column-chart2"));
                colChart.draw(view, no2_barOptions);
                // Add our selection handler
                google.visualization.events.addListener(colChart,'select',selectHandler);

                function selectHandler(){
                    var selection = colChart.getSelection();

                    var message = '';
                    for (var i = 0; i < selection.length; i++) {
                      var item = selection[i];
                      var idx = item.row;

                      if (idx != null) {
                        label = data2.getValue(idx, 0); // 키워드
                        p_value = data2.getValue(idx, 1); // P-Value

                        changeData2();
                      }
                      if (label) {
                        document.getElementById("tmp-2").style.display="none";

                        document.getElementById("no2-keyword-chart-1").style.display="none";
                        document.getElementById("no2-keyword-chart-2").style.display="none";
                        document.getElementById("no2-keyword-chart-3").style.display="none";
                        document.getElementById("no2-keyword-chart-4").style.display="none";
                        document.getElementById("no2-keyword-chart-5").style.display="none";
                        document.getElementById("no2-keyword-chart-6").style.display="none";
                        document.getElementById("no2-keyword-chart-7").style.display="none";
                        document.getElementById("no2-keyword-chart-8").style.display="none";
                        document.getElementById("no2-keyword-chart-9").style.display="none";
                        document.getElementById("no2-keyword-chart-10").style.display="none";
                        document.getElementById("no2-keyword-chart-11").style.display="none";
                        document.getElementById("no2-keyword-chart-12").style.display="none";
                        document.getElementById("no2-keyword-chart-13").style.display="none";
                        document.getElementById("no2-keyword-chart-14").style.display="none";
                        document.getElementById("no2-keyword-chart-15").style.display="none";
                      }
                      if (label == '대장동') {
                        document.getElementById("no2-keyword-chart-1").style.display="block";
                      }
                      else if (label == '이낙연'){
                        document.getElementById("no2-keyword-chart-2").style.display="block";
                      }
                      else if (label == '여론조작'){
                        document.getElementById("no2-keyword-chart-3").style.display="block";
                      }
                      else if (label == '특검'){
                        document.getElementById("no2-keyword-chart-4").style.display="block";
                      }
                      else if (label == '안철수'){
                        document.getElementById("no2-keyword-chart-5").style.display="block";
                      }
                      else if (label == '토론'){
                        document.getElementById("no2-keyword-chart-6").style.display="block";
                      }
                      else if (label == '자영업자'){
                        document.getElementById("no2-keyword-chart-7").style.display="block";
                      }
                      else if (label == '박근혜'){
                        document.getElementById("no2-keyword-chart-8").style.display="block";
                      }
                      else if (label == '부동산'){
                        document.getElementById("no2-keyword-chart-9").style.display="block";
                      }
                      else if (label == '김종인'){
                        document.getElementById("no2-keyword-chart-10").style.display="block";
                      }
                      else if (label == '정권교체'){
                        document.getElementById("no2-keyword-chart-11").style.display="block";
                      }
                      else if (label == '홍준표'){
                        document.getElementById("no2-keyword-chart-12").style.display="block";
                      }
                      else if (label == '단일화'){
                        document.getElementById("no2-keyword-chart-13").style.display="block";
                      }
                      else if (label == '사퇴'){
                        document.getElementById("no2-keyword-chart-14").style.display="block";
                      }
                      else if (label == '검찰'){
                        document.getElementById("no2-keyword-chart-15").style.display="block";
                      }
                    }
                }
              }

              function changeData2(){
                var tmp_period = document.getElementById('line-chart-name2');
                tmp_period.innerText = label;
                if (label){
                  var tmp_keword = document.getElementById('line-chart-name2');
                  tmp_keword.innerText = "윤석열 후보의 지지율과 '" + label + "' 언급 빈도 변화량";
                }
              }

            </script>
      </main>
      <main class="chart" style = "width: 50%; float: right;">
        <h5 class = "chart-name" id="line-chart-name2">윤석열 후보의 지지율과 '대장동' 언급 빈도 변화량</h5>

        <div class = "line-chart" id="no2-keyword-chart-1" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 대장동
            var rateData = google.visualization.arrayToDataTable(no2_keyword1_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-1'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div id="tmp-2" style= "width: 100%; height: 1000px;"></div>

        <div class = "line-chart" id="no2-keyword-chart-2" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 이낙연
            var rateData = google.visualization.arrayToDataTable(no2_keyword2_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-2'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-3" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 여론조작
            var rateData = google.visualization.arrayToDataTable(no2_keyword3_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-3'));
            lineChart.draw(rateData, no2_lineOptions);
          }
        </script>

        <div class = "line-chart" id="no2-keyword-chart-4" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 특검
            var rateData = google.visualization.arrayToDataTable(no2_keyword4_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-4'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-5" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 안철수
            var rateData = google.visualization.arrayToDataTable(no2_keyword5_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-5'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-6" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 토론
            var rateData = google.visualization.arrayToDataTable(no2_keyword6_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-6'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-7" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 자영업자
            var rateData = google.visualization.arrayToDataTable(no2_keyword7_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-7'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-8" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 박근혜
            var rateData = google.visualization.arrayToDataTable(no2_keyword8_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-8'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-9" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 부동산
            var rateData = google.visualization.arrayToDataTable(no2_keyword9_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-9'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-10" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 김종인
            var rateData = google.visualization.arrayToDataTable(no2_keyword10_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-10'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-11" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 정권교체
            var rateData = google.visualization.arrayToDataTable(no2_keyword11_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-11'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-12" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 홍준표
            var rateData = google.visualization.arrayToDataTable(no2_keyword12_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-12'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-13" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 단일화
            var rateData = google.visualization.arrayToDataTable(no2_keyword13_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-13'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-14" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 사퇴
            var rateData = google.visualization.arrayToDataTable(no2_keyword14_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-14'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>

        <div class = "line-chart" id="no2-keyword-chart-15" style= "margin-right: 1px;"></div>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
          google.setOnLoadCallback(drawCharts);
          function drawCharts() {
            // 검찰
            var rateData = google.visualization.arrayToDataTable(no2_keyword15_diff)

            var lineChart = new google.visualization.LineChart(document.getElementById('no2-keyword-chart-15'));
            lineChart.draw(rateData, no2_lineOptions);
          }

        </script>
      </main>
    </div>
    <p style="clear:both;"></p>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="gc.js"></script>
  </body>
</html>
