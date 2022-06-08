<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 배경 css, 배경 js -->
<link rel="stylesheet"
		href="${ pageContext.request.contextPath }/resources/css/main.css">
		
<script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/background.css">
	
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/question/question_1.css">
	
<script src="${ pageContext.request.contextPath }/resources/js/question/bar.js"></script>




<!-- font  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@500&display=swap" rel="stylesheet">

<style type="text/css">
	body{
		background-color: white;
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

	<main>
		<div>
			<h1 style="text-align:center; ">
			
				&nbsp;&nbsp;&nbsp;&nbsp;페이지 소개&nbsp;&nbsp;<img style="width:80px; height:80px"src ="${pageContext.request.contextPath}/resources/Icon/light-bulb.png"></h1>
		</div>
		
		<p><img style="width:60px; height:60px;"alt="graph" src="${pageContext.request.contextPath}/resources/Icon/ranking.png">&nbsp;키워드 페이지</p>
		<p>
		&nbsp;KoNLPy를 사용하여 형태소 분석 후 명사 형태인 키워드를 추출했다.
		&nbsp;추출한 키워드는 빈도 분석 진행 후 최종 빈도 분석 데이터를 추출했다.
		&nbsp;빈도 분석 페이지에서는 2021.10 ~ 2022.03 사이 상위 10개의 키워드를 보여준다.
		&nbsp;그리고 순위표의 키워드를 클릭하면 해당하는 키워드의 빈도 그래프를 시계열로 보여준다.
		</p>
		
		<p><img style="width:60px; height:60px;"alt="graph" src="${pageContext.request.contextPath}/resources/Icon/emotion_1.png">&nbsp;감정 분석 페이지</p>
		<p>
		파이썬 구글 번역 API인 googletrans를 사용해 한글로 이루어진 댓글을 영어로 번역한다.
		&nbsp;그 후 LSTM의 SentiWordNet 을 이용해 감정 분석 모델을 학습시켜 영어로 번역된 댓글들의 긍정/부정을 분류한다.
		&nbsp;최종적으로 2021.10 ~ 2022.03 까지의 각 후보자의 긍정/부정 댓글을 보여주고 오른쪽에는 감정 분석 결과를 백분율로 보여준다.
		</p>
		
		<p><img style="width:60px; height:60px;"alt="graph" src="${pageContext.request.contextPath}/resources/Icon/relations.png">&nbsp;인과관계 페이지</p>
		<p>
		시계열 분석과 Granger Causality 검정, LSTM모델을 이용하여 키워드와 지지율 데이터 사이의 인과관계를 추론한다.
		&nbsp;이를 계산하여 특정 이슈가 실제로 지지율에 영향을 미쳤는지 파악한다.
		&nbsp;2021.10 ~ 2022.03 까지의 후보자 지지율 그래프를 왼쪽에 보여주고 날짜를 클릭하면 해당되는 시기에 어떤 사건이 있었는지 오른쪽에 키워드롤 보여준다.
		</p>
		
		<p><img style="width:60px; height:60px;"alt="graph" src="${pageContext.request.contextPath}/resources/Icon/prediction.png">
		&nbsp;지지율 예측 페이지</p> <!-- <mark class="text-highlight">&nbsp;지지율 예측 페이지</mark> -->
		<p>
		10월부터 3월까지 2개의 여론조사기관에서 조사한 후보자 지지율 예측 그래프와 우리가 예측한 지지율 예측 그래프를 보여준다.
		&nbsp;여론조사기관에서 조사한 결과와 소컴소컴에서 조사한 결과를 하나의 그래프로 보여줌으로써 정확도를 비교하기 쉽도록 나타냈다.
		</p>
	
	</main>
</html>