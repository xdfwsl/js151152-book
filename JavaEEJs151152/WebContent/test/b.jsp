<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.test.User"></jsp:useBean>
<jsp:setProperty property="userName" name="user" param="userName" />
<jsp:getProperty property="userName" name="user"/>

<jsp:forward page="a.jsp"></jsp:forward>
</body>
</html>