/**
 * 
 */

	var count = 1
	
	function keyword_param(username, t1,t2,t3,t4,t5,t6,rgb){
		/*자동 스크롤 다운*/
		let currentHeight = 0; // 이것 함수 안에 있으면 제대로 작동 안함!!
		var scrollInterval = setInterval(function() {
		  let pageBottom = document.documentElement.scrollHeight;
		  if(currentHeight < pageBottom) {
		    document.documentElement.scrollTop = document.documentElement.scrollHeight;
		    currentHeight = pageBottom;
		    console.log(`스크롤 중 현재 바닥 위치 : ${currentHeight}`);
		  } else {
		    clearInterval(scrollInterval);
		    console.log(`스크롤을 끝냈습니다. currentHeight 값 ${currentHeight}, pageBottom 값 ${pageBottom}`)
		  }
		}, 500);
		/*자동 스크롤 다운*/

		if(count == 1){
			count=0;
		}else{
			const div = document.getElementById('temp');  
			div.remove();
			

			const element = document.getElementById('container');
			element.innerHTML += 
			'<div id="temp"><div id="keyword_graph"></div><script src="${ pageContext.request.contextPath }/resources/js/Easygraphs.js"></script><script src="${ pageContext.request.contextPath }/resources/js/graph/keyword_graph.js"></script></div>';

		}

		
		var eg2 = new Easygraphs({
		  container: document.getElementById('keyword_graph'),
		  width: 870,
		  height: 400,
		  padding: {
		    top: 30,
		    right: 30,
		    left: 65
		  },
		  tooltip: {
		    template: '{{ category }}: {{ value }}',
		    widthAuto: true,
		    color: '#222',
		    background: '#FFF'
		  },
		  yAxis: {
		    text: {
		      toFixed: 0
		    },
		    title: {
		      text: '키워드 빈도수'
		    },
		    grid: {
		      show: false
		    }
		  },
		  legend: {
                position: 'bottom',
                textStyle: {
                  fontSize: 50
                }
             },
		  xAxis: {
		    /*labels: ['2021.10', '2021.11', '2021.12', '2022.01', '2022.02', '2022.03'],*/

			 title: {
			      text: '키워드 이름',
			      font: {
			        family: 'Courier New, monospace',
			        size: 18,
			        color: '#7f7f7f'
			      }
			},
			labels: ['2021.10', '2021.11', '2021.12', '2022.01', '2022.02', '2022.03']
		  },
		  data: [
		    {
		    name: username,
		    dots: {
		      color: rgb/*'rgb(139, 197, 84)'*/
		    },
		    line: {
		      width: 2,
		      color: rgb
		    },
		      values: [parseInt(t1), parseInt(t2), parseInt(t3), parseInt(t4), parseInt(t5), parseInt(t6)]/*[912, 1172, 915, 950, 1166, 1167]*/
		    },
			{
		    name: "윤석열",
		    dots: {
		      color: 'rgb(255, 36, 36)'/*'rgb(139, 197, 84)'*/
		    },
		    line: {
		      width: 2,
		      color: 'rgb(255, 36, 36)'
		    },
		      values: [207585,127424,255715,402119,747566,70095]/*[912, 1172, 915, 950, 1166, 1167]*/
		    },
			{
		    name: "이재명",
		    dots: {
		      color: 'rgb(18, 102, 255)'/*'rgb(139, 197, 84)'*/
		    },
		    line: {
		      width: 2,
		      color: 'rgb(18, 102, 255)'
		    },
		      values: [420900,161685,238647,408974,547563,69575]/*[912, 1172, 915, 950, 1166, 1167]*/
		    }
		  ],
		});
	
		eg2.render();
		function randomInteger(min, max) {
		    return Math.floor(Math.random() * (max - min)) + min;
		}
		var bigData = [];
		    for (var i = 0; i < 200; i++) {
		        bigData[i] = randomInteger(0, 1000);
		
		    }
		
	}
	
	





