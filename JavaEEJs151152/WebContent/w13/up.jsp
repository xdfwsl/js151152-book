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

	<sql:update var="order" dataSource="${conn}">

       insert into BookOrder(username,zipcode,phone,creditcard,total)  values(?, '1000020', '8888866666', '12345678901', 50.00)

   <sql:param value="201777"></sql:param>
</sql:update>

</body>
</html>