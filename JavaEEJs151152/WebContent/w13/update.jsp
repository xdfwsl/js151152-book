<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://127.0.0.1:3306/book?useUnicode=true&characterEncoding=utf8"
		user="root" password="1qaz" var="conn" scope="session" />
	<sql:update dataSource="${conn }" var="loginName" scope="session">
update userinfo set password=? where loginname=?
<sql:param value="${param.password }" />
		<sql:param value="${param.loginName }" />
	</sql:update>
	将用户${param.loginName }密码修改为${param.password }
	<a href="select.jsp">查询订单</a>
</body>
</html>