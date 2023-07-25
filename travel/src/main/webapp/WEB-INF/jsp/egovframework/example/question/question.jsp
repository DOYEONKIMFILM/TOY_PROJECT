<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question</title>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
</head>
<body>
	<div style="text-align: center">
		<c:forEach items="${question}" var="question">
			<input type="hidden" value="1" id="mainQuestion" />
			<h1>${question.qnaQ}</h1>
		</c:forEach>

		<ol>
			<li>답변1</li>
			<li>답변2</li>
			<li>답변3</li>
			<li>답변4</li>
		</ol>

		<button id="nextBtn" onclick="nextBtnEvn()">다음</button>
	</div>

	<script>
		function nextBtnEvn() {
			console.log('--- nextBtnEvn() 실행 ---');
			//var nextQuestion = $("#mainQuestion").val() + 1;
			
			$.ajax({
				url : "/ajaxquestion",
				type : "POST",
				dataType : "text",
				success : function(data) 
					{
						console.log(data);
						//question.qnaQ.$("#mainQuestion").val($("#mainQuestion").val() + 1)
					},
				error : function(error) {
					console.log('--- error ---');
				}
			});
		}

			/* $.ajax({
				url : "ajaxquestion.do",
				type : "POST",
				data : {"qnaNo" : qno, "qnaQ" : qnaq}, // 요청 시 포함되어질 데이터 
				dataType : "text",
				success : function(data) 
					{
						console.log(data);
						//question.qnaQ.$("#mainQuestion").val($("#mainQuestion").val() + 1)
					},
				error : function(error) {
					console.log('--- error ---');
				}
			});
		} */
	</script>

</body>
</html>