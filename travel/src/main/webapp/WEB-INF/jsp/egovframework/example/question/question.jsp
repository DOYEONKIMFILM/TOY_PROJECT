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
	<h1>${question}</h1>
	<div style="text-align: center">
		<h3>질문을 적습니다.</h3>
		   <ol>
		       <li>답변1</li>
		       <li>답변2</li>
		       <li>답변3</li>
		       <li>답변4</li>      
		   </ol>
	</div>
</body>
</html>