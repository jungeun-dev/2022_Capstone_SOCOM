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

    <section class="the-grid-section">

    	<article class="the-grid">
    		<div class="the-grid-content">
    			<div class="headline">
    				<a href="graph_page.do" target="_blank">
    					<h2 class="title">KEYWORD</h2>
    					<h3 class="writer">주요 이슈</h3>
    					<figure>
    						<img style="border-radius: 30px;"class="picture_inner"src ="${pageContext.request.contextPath}/resources/Icon/main_keyword.jpg">
    					</figure>
    				</a>
    			</div>
    			<p>KoNLPy를 사용하여 전처리 된 댓글에서 명사를 추출해서 빈도 분석을 진행하였다. 2021.03 ~ 2022.03 선거 전까지의 키워드 빈도 수를 시계열 데이터로 나타냈다.</p>
    			<div class="button">
    				<a href="graph_page.do" target="_blank">Read More</a>
    			</div>
    		</div>
    	</article>

    	<article class="the-grid">
    		<div class="the-grid-content">
    			<div class="headline">
    				<a href="gc_page.do">
    					<h2 class="title">CAUSALITY</h2>
    					<h3 class="writer">인과관계</h3>
    					<figure>
    						<img style="border-radius: 30px;"class="picture_inner"src ="${pageContext.request.contextPath}/resources/Icon/main_gc.png">
    					</figure>
    				</a>
    			</div>
    			<p>LSTM 모델을 사용하여 지지율과 키워드 사이의<br>
            인과관계를 추론하였다. 각 후보의 지지율에 영향을<br>
            미친 이슈를 파악할 수 있다.</p>
    			<div class="button">
    				<a href="gc_page.do">Read More</a>
    			</div>
    		</div>
    	</article>

    	<article class="the-grid">
    		<div class="the-grid-content">
    			<div class="headline">
    				<a href="prediction_page.do">
    					<h2 class="title">PREDICTION</h2>
    					<h3 class="writer">지지율 예측</h3>
    					<figure>
    						<img style="border-radius: 30px;"class="picture_inner"src ="${pageContext.request.contextPath}/resources/Icon/main_prediction.png">
    					</figure>
    				</a>
    			</div>
          <p>Elastic Net과 LSTM으로 학습하여 도출된 키워드의 빈도수 시계열 데이터를 이용하여 지지율을 예측하였다.</p>
    			<div class="button">
    				<a href="prediction_page.do">Read More</a>
    			</div>
    		</div>
    	</article>

    	<article class="the-grid">
    		<div class="the-grid-content">
    			<div class="headline">
    				<a href="emotion_page.do" target="_blank">
    					<h2 class="title">PUBLIC OPINION</h2>
    					<h3 class="writer">후보 호감도</h3>
    					<figure>
    						<img style="border-radius: 30px;"class="picture_inner"src ="${pageContext.request.contextPath}/resources/Icon/main_po.jpg">
    					</figure>
    				</a>
    			</div>
    			<p>googletrans와 LSTM을 이용해 감정 분석 모델을 학습시켜 댓글의 긍정/부정을 분류한다.</p>
    			<div class="button">
    				<a href="emotion_page.do" target="_blank">Read More</a>
    			</div>
    		</div>
    	</article>

    </section>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="main.js"></script>
  </body>
</html>
