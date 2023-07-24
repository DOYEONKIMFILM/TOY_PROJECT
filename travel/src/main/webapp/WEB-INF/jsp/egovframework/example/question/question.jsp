<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question</title>
</head>
<body>
	<div style="text-align: center">
		<c:forEach items="${question}" var="question">
			<input type="hidden" value="1" id="mainQuestion"/>
			<h1>${question.qnaQ}</h1>
		</c:forEach>
		
		   <ol>
		       <li>답변1</li>
		       <li>답변2</li>
		       <li>답변3</li>
		       <li>답변4</li>      
		   </ol>
		   
		   <button id="nextBtn" onclick="nextBtnEvn();">다음</button>
	</div>
	
	<script>
		function nextBtnEvn() {
			console.log('--- nextBtnEvn() 실행 ---');
			 var nextQuestion = $("#mainQuestion").val() + 1
		}
	</script>
	<script>
	$.ajax ({
		  // URL은 필수 요소이므로 반드시 구현해야 하는 Property입니다.
		  url	: "question.do", // 요청이 전송될 URL 주소
		  type	: "POST", // http 요청 방식 (default: ‘GET’)
		  data  : {key : value}, // 요청 시 포함되어질 데이터 
		  dataType : "json", // 응답 데이터 형식 (명시하지 않을 경우 자동으로 추측)
		  success : function(data, status, xhr) {
		    // 정상적으로 응답 받았을 경우에는 success 콜백이 호출되게 됩니다.
		    // 이 콜백 함수의 파라미터에서는 응답 바디, 응답 코드 그리고 XHR 헤더를 확인할 수 있습니다.
		  },
		  error	: function(xhr, status, error) {
		        // 응답을 받지 못하였다거나 정상적인 응답이지만 데이터 형식을 확인할 수 없기 때문에 
		        // error 콜백이 호출될 수 있습니다.
		        // 예를 들어, dataType을 지정해서 응답 받을 데이터 형식을 지정하였지만,
		        // 서버에서는 다른 데이터형식으로 응답하면  error 콜백이 호출되게 됩니다.
		  }
		});

	</script>
	
</body>
</html>