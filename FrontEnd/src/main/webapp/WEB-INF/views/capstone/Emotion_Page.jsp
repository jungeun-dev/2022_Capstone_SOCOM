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

<script
	src="<%=request.getContextPath()%>/resources/js/jquery.form.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
<%-- <link rel="stylesheet"
	      href="${ pageContext.request.contextPath }/resources/css/searchform.css"> --%>
<%-- <script
	src="${ pageContext.request.contextPath }/resources/js/search.js"></script> --%>

<%-- <link rel="stylesheet"
	      href="${ pageContext.request.contextPath }/resources/css/background.css"> --%>

<link rel="stylesheet"
	      href="${ pageContext.request.contextPath }/resources/css/emotion/text_box.css">

<!-- google_font  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@500&display=swap" rel="stylesheet">

<!-- font  -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>


<!-- 그래프 -->
<link href="${ pageContext.request.contextPath }/resources/css/demo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/jqbar.css" />
	
<script src="${ pageContext.request.contextPath }/resources//js/jquery.min.js" type="text/javascript"></script>
<script src="${ pageContext.request.contextPath }/resources/js/jqbar.js" type="text/javascript"></script>




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
	

	
	<!-- 감정분석 결과  -->
	<div style="margin-left : 300px; table-layout:fixed;">
		<div style = "float:left;">
			<%-- <div>
				<img style=" margin-bottom : 40px; width:200px; height:220px;"src ="${pageContext.request.contextPath}/resources/Icon/이재명_감정.jpg">
			</div> --%>
			
			<%-- <div class="tape" style="text-align:center;">
			  	<div class="paper pink" style="padding: 20px;display: flex;justify-content: center;flex-direction: column;">
				    <div class="tape-section"></div>
					    <p>
					    	<img class="picture" style="margin-left:180px; margin-bottom : 20px; width:200px; height:220px;"src ="${pageContext.request.contextPath}/resources/Icon/이재명_감정.jpg">
					    </p>
					 <div class="tape-section"></div>
				 </div>
			 </div> --%>
			 
			 <div style="margin-top:50px;">
			 	<div class="picture" style="padding-left : 50px;">
			 		<img style=" border-radius: 30px;"class="picture_inner"src ="${pageContext.request.contextPath}/resources/Icon/이재명_감정.jpg">
			 	</div>
			 </div>
			 
			<h2 style=" margin-left : 40px; width:50px; height:50px; font-family: 'Hahmlet', serif;">Positive</h2>
			
			<div>
				<div class="box" style=" padding:10px; font-family: 'Hahmlet', serif; height:350px;">
  					<p>1. 이미 경기도도지사에서 능력을 증명했다 이재명 파이팅</p>
  					<p>2. 이 정도면 거의   막장이다.  진정성 있고  체계적인  이재명  지지 합니다.</p>
  					<p>3. 이 대표 헛 소리 잘 하네  윤후보가 이길 것 같으면 도와야지 이재명 후보는 뱉은 말은 지키는 사람인 것을 성남 시장에서 증명했다.</p>
  					<p>4. 이 후보님 참 맞는 말씀입니다. 대한민국을 이끌어갈 지도자입니다.</p>
  					<p>5. 우리 미래의 가족들을 위해서라도 이재명 후보님 뽑자 끝까지 버티고 힘내주세요 응원합니다.</p>
				</div>
			</div>

			 <div style=" margin-top:50px;">
			 	<div class="picture" style="padding-left : 50px;">
			 		<img style="border-radius: 30px;"class="picture_inner"src ="${pageContext.request.contextPath}/resources/Icon/윤석열_감정.jpg">
			 	</div>
			 </div>
			
			<h2 style=" margin-left : 40px; width:50px; height:50px; font-family: 'Hahmlet', serif;">Positive</h2>
			
			<div>
				<div class="box" style="padding:10px; font-family: 'Hahmlet', serif; height:350px; ">
  					<p>1. 반드시 승리해서 국민을 위한 정권교체 해주세요</p>
  					<p>2. 가시던 길 살펴가세요 어대윤 무대윤 어차피 대통령은 윤석열  무조건 대통령은 윤석열</p>
  					<p>3. 세금 잡아먹는 여가부폐지찬성 윤석열 화이팅</p>
  					<p>4. 우리의 청년들을 위해 좋은 공약 감사합니다 윤석열 후보님 </p>
  					<p>5. 윤석열닝 대통령 후보로 자질 됩니다 꼭 당선을 기도하겠습니다</p>

				</div>
			</div>
			
		</div>
		
		<div style = "float:left;">
			<h2 style="margin-top: 380px; margin-left : 40px; width:50px; height:50px; font-family: 'Hahmlet', serif;">Negative</h2>
			<div>
				<div class="box" style=" padding:10px; font-family: 'Hahmlet', serif;height:350px; ">
  					<p>1. 돈 먹은 여성단체와 정의당 민주당부터 시작해서 죄다 윤석열 물어 뜯으려고 난리겠네 뱀 같은 이재명은 표 떨어질까봐 눈치 살살 봐가며 잔머리 굴리는 중일거야</p>
  					<p>2. 이재명이 유력 대선후보로 거론되는 한국의 현실이 참담하다</p>
  					<p>3. 이재명 보기싫어 뉴스도 안본다 이놈 보면 무섭고 역겨워서 밥맛도 없다 형수한테 쌍욕질 하는 녹취록이나 들어볼란다</p>
  					<p>4. 이제 정권교체 파란 신호등 켜졌습니다 우리 모두 단결하여  이재명 찢으려 갑시다</p>
  					<p>5. 이재명 후보님 본인이 청렴하지 않는데 이런 공약 거짓말 같은데 뭘 믿고 뽑아달라고 그러는건지</p>
				</div>
			</div>
			
			<h2 style="margin-top: 360px; margin-left : 40px; width:50px; height:50px; font-family: 'Hahmlet', serif;">Negative</h2>
			
			<div>
				<div class="box" style="padding:10px; font-family: 'Hahmlet', serif;height:350px; ">
  					<p>1. 윤석열  다른 후보들이랑  토론할 때마다 보니깐 말귀도 잘 못 알아듣고    횡설수설  질문까먹음 질문자체  이해못해  기본상식조차 없던데</p>
  					<p>2. 윤석열은 국민을 기만하는 행위이다 그런 쇼 한다고 지지율 올라갈줄아냐 국민은 윤석열이 빈깡통 윤깡통 이라는걸 알만한 유권자는 다안다</p>
  					<p>3. 정치검사 윤석열 구태 적폐 정치를 한껏 보여주고 있다 발전적 비젼과 지혜로 리더가 되지 못하고 권력 잡아보겠다고 우매한 집단에도 끌려다니는게 대통이 되서어서는 절대 안될 사람이다</p>
  					<p>4. 윤석열 발언 처가 문제 등으로 이미 약점을 너무 많이 드러냈다</p>
  					<p>5. 윤석열은 준비가 전혀 없는 후보 같네요 사퇴가 답입니다</p>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 감정분석 그래프 -->
	
	<div style="font-family: 'Hahmlet', serif;   position: -webkit-sticky; position: sticky;">

		<div id="bar-1">
			<h2>이재명</h2>
			Positive&nbsp;
		</div>
		<div id="bar-2">
			Negative
		</div>
		
		
		<div id="bar-3">
			<h2>윤석열</h2>
			<%-- <img style="width:20px; height:20px;"alt="" src="${ pageContext.request.contextPath }/resources/Icon/happy.png"> --%>
			Positive&nbsp;
		</div>
		<div id="bar-4">
			Negative
		</div>
	
		<div>
			<script type="text/javascript">
		
				$(document).ready(function () {
					$('#bar-1').jqbar({value: 26, barColor: '#3a89c9' });
					$('#bar-2').jqbar({value: 74, barColor: '#D64747' });
					$('#bar-3').jqbar({value: 31, barColor: '#3a89c9' });
					$('#bar-4').jqbar({value: 69, barColor: '#D64747' });
					$('#bar-5').jqbar({ label: 'CSS3', value: 60, barColor: '#939393' });
					$('#bar-6').jqbar({ label: 'jQuery', value: 70, barColor: '#3a89c9' });
					/* $('#bar-3').jqbar({ label: 'Javascript', value: 90, barColor: '#ea805c' });
					$('#bar-4').jqbar({ label: 'HTML5', value: 50, barColor: '#88bbc8' });
					$('#bar-5').jqbar({ label: 'CSS3', value: 60, barColor: '#939393' });
					$('#bar-6').jqbar({ label: 'jQuery', value: 70, barColor: '#3a89c9' });
					$('#bar-7').jqbar({ label: 'Wal', value: 90, barColor: '#D64747', orientation: 'v' });
					$('#bar-8').jqbar({ label: 'Ohi', barColor: '#FF681F', value: 70, orientation: 'v' });
					$('#bar-9').jqbar({ label: 'Song', barColor: '#ea805c', value: 50, orientation: 'v' });
					$('#bar-10').jqbar({ label: 'Pisho', barColor: '#88bbc8', value: 90, orientation: 'v' });
					$('#bar-11').jqbar({ label: 'Mara', barColor: '#939393', value: 70, orientation: 'v' });
					$('#bar-12').jqbar({ label: 'Dagha', barColor: '#3a89c9', value: 50, orientation: 'v' }); */
				});
			</script> 
		</div>
	</div>
	
	
	
	
	 


</html>

