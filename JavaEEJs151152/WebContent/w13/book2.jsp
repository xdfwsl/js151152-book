<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="titlesBean" class="com.operation.TitlesBean"></jsp:useBean>
	<c:set var="titles" value="${titlesBean.titles}" scope="session" />
	<c:forEach var="currentBook" items="${sessionScope.titles}">
		<a href="displaybook.jsp?isbn=${currentBook.ISBN}">
			${currentBook.title},${currentBook.editionNumber} 
			<img src='../images/${currentBook.imageFile}'>

		</a>
	</c:forEach>
</body>
</html>