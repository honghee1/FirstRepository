<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	 <c:forEach var="dto" items="${requestScope.list1 }">
            <a href="index-cinema.do?name=${dto.screencode }">
										${dto.name }</a>
            </c:forEach> 
</body>
</html>