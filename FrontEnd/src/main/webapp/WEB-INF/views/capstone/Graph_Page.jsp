<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

    

<!-- Graph_Page 배경 css -->	
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/keyword/keyword_1.css">

<!-- keyword_graph  -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/graph/keyword_graph.css">
	
<!-- select_box -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/graph/select_box.css">

<!-- font  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@500&display=swap" rel="stylesheet">
<!-- font  -->

<script src="${ pageContext.request.contextPath }/resources/js/keyword/keyword.js"></script>
<script src="https://d3js.org/d3.v4.min.js"></script>

<script src="${ pageContext.request.contextPath }/resources/js/graph/month.js"></script>

<!-- 배경 css, 배경 js -->
<link rel="stylesheet"
		href="${ pageContext.request.contextPath }/resources/css/keyword_main.css">
<script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>

<style type="text/css">
	a:hover{
		color:red;
		text-decoration: underline;
	}
</style>

</head>
<body>
	<!-- 배경 -->
	<header>
    	<h1 class="news_paper_title">
    		<a href="home.do" style="text-decoration:none;">SOCOM TIMES</a>
    	</h1>
      <div class="news_paper_location">
        <ul class = "emotion_ul">
          <li class = "emotion_li"><a href="home.do" style="text-decoration:none; color: black;">Home</a></li>
          <li class = "emotion_li"><a href="question_page.do" style="text-decoration:none; color: black;">About</a></li>
          <li class = "emotion_li"><a href="graph_page.do" style="text-decoration:none; color: black;">Keyword</a></li>
          <li class = "emotion_li"><a href="gc_page.do" style="text-decoration:none; color: black;">Causality</a></li>
          <li class = "emotion_li"><a href="prediction_page.do" style="text-decoration:none; color: black;">Prediction</a></li>
          <li class = "emotion_li"><a href="emotion_page.do" style="text-decoration:none; color: black;">Public Opinion</a></li>
        </ul>
      </div>
    </header>

    

	<link href='https://fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'>


	<section class="container">
		<h1>Keyword Ranking List</h1>
		<h2>Keyword Click</h2>
		<h3>6</h3>  
		<div class="select-box" style="margin-top:100px; font-family: 'Hahmlet', serif;" >
		  <div class="select-box__current" tabindex="1" style="vertical-align: top; top:3px;" >
		    <div class="select-box__value">
		      <input style="vertical-align:text-top" class="select-box__input" type="radio" id="0" value="1" name="Ben" checked="checked"/>
		      <p class="select-box__input-text">10월 &nbsp;&nbsp;&nbsp;</p>
		    </div>
		    <div class="select-box__value">
		      <input style="vertical-align:text-top" class="select-box__input" type="radio" id="1" value="2" name="Ben"/>
		      <p class="select-box__input-text">11월</p>
		    </div>
		    <div class="select-box__value">
		      <input style="vertical-align:text-top" class="select-box__input" type="radio" id="2" value="3" name="Ben"/>
		      <p class="select-box__input-text">12월</p>
		    </div>
		    <div class="select-box__value">
		      <input style="vertical-align:text-top" class="select-box__input" type="radio" id="3" value="4" name="Ben"/>
		      <p class="select-box__input-text">1월</p>
		    </div>
		    <div class="select-box__value">
		      <input style="vertical-align:text-top" class="select-box__input" type="radio" id="4" value="5" name="Ben"/>
		      <p class="select-box__input-text">2월</p>
		    </div>
		    <div class="select-box__value">
		      <input style="vertical-align:text-top" class="select-box__input" type="radio" id="5" value="6" name="Ben"/>
		      <p class="select-box__input-text">3월</p>
		    </div><img class="select-box__icon" src="http://cdn.onlinewebfonts.com/svg/img_295694.svg" alt="Arrow Icon" aria-hidden="true"/>
		  </div>
		  <ul class="select-box__list">
		    <li>
		      <label onclick="October()"  class="select-box__option" for="0" aria-hidden="aria-hidden">10월</label>
		    </li>
		    <li>
		      <label onclick="November()" class="select-box__option" for="1" aria-hidden="aria-hidden">11월</label>
		    </li>
		    <li>
		      <label onclick="December()" class="select-box__option" for="2" aria-hidden="aria-hidden">12월</label>
		    </li>
		    <li>
		      <label onclick="January()" class="select-box__option" for="3" aria-hidden="aria-hidden">1월</label>
		    </li>
		    <li>
		      <label onclick="February()" class="select-box__option" for="4" aria-hidden="aria-hidden">2월</label>
		    </li>
		    <li>
		      <label onclick="March()" class="select-box__option" for="5" aria-hidden="aria-hidden">3월</label>
		    </li>
		  </ul>
		</div>
		<div>
			<table class="stickytable" align="center">
				<tr>
					<th>Ranking</th>
					<th>keyword</th>
				</tr>
				<!--   추미애, 대장동, 부동산, 전세보증금, 재산세, 국토보유세, 코로나, LTV, 양도세, 비과세 -->
				<tr>
					<td>1</td>
					<td>
						<div id = "1div">
							<a href="#" class = "scroll" onclick="keyword_param('대장동','199237','88233','27462','109367','113641','26028','rgb(47, 157, 39)')">대장동&nbsp;(199237)</a>
						</div>
					</td>
	
				</tr>
				<tr>
					<td>2</td>
					<td>
						<div id="2div">
							<a href="#" onclick="keyword_param('특검','122924','54165','38776','87267','63351','2458','rgb(255, 187, 0)')">특검&nbsp;(122924)</a>
						</div>
					</td>

				</tr>
				<tr>
					<td>3</td>
					<td>
						<div id="3div">
							<a href="#" onclick="keyword_param('홍준표','103347','33141','42073','123940','70079','4453','rgb(153, 0, 133)')">홍준표&nbsp;(103347)</a>
						</div>
					</td>

				</tr>
				<tr>
					<td>4</td>
					<td>
						<div id="4div">
							<a href="#" onclick="keyword_param('대선후보','83729','33211','17475','49114','67968','974','rgb(117, 188, 0)')">대선후보&nbsp;(83729)</a>
						</div>
					</td>	
				</tr>
				<tr>
					<td>5</td>
					<td>
						<div id="5div">
							<a href="#" onclick="keyword_param('이낙연','68099','22058','17509','123940','10079','4061','rgb(165, 102, 255)')">이낙연&nbsp;(68099)</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>6</td>
					<td>
						<div id="6div">
							<a href="#" onclick="keyword_param('사퇴','62773','92294','38918','109367','113641','26028','rgb(70, 65, 217)')">사퇴&nbsp;(62773)</a>
						</div>
					</td>			
				</tr>
				<tr>
					<td>7</td>
					<td>
						<div id="7div">
							<a href="#" onclick="keyword_param('구속','53728','53728','19685','142849','30524','5748','rgb(173, 142, 219)')">구속&nbsp;(53728)</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>8</td>
					<td>
						<div id="8div">
							<a href="#" onclick="keyword_param('박근혜','49808','26339','29099','87267','39081','5699','rgb(243, 97, 220)')">박근혜&nbsp;(49808)</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>9</td>
					<td>
						<div id="9div">
							<a href="#" onclick="keyword_param('검찰','46185','16755','26030','109367','113641','1475','rgb(255, 178, 217)')">검찰&nbsp;(46185)</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>10</td>
					<td>
						<div id="10div">
							<a href="#" onclick="keyword_param('정권교체','40320','66313','120780','202571','118364','30789','rgb(103, 153, 255)')">정권교체&nbsp;(40320)</a>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<h3>5</h3>
		<h1>Graph</h1>
		<h2>Scroll again</h2>
		<h3>6</h3>
		<div id="container" class="container" style="font-family: 'Hahmlet', serif;">
		
			<h2>Keyword Frequency Graph</h2>
			
			<div id="temp"> 
				<div id="keyword_graph"></div>
				
				<script src="${ pageContext.request.contextPath }/resources/js/Easygraphs.js"></script>
				<%-- <script src="${ pageContext.request.contextPath }/resources/js/graph/graph_keyword.js"></script> --%>
				<script src="${ pageContext.request.contextPath }/resources/js/graph/graph_keyword.js"></script>

			</div>


		</div>	
		
		<div id="random">
		
		</div>

	</section>
	
	
	
</html>

