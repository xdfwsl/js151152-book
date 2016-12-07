<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://127.0.0.1:3306/book?useUnicode=true&characterEncoding=utf8"
		user="root" password="1qaz" var="conn" />
		<sql:update var="order" dataSource="${conn}">
		insert into bookorder(username,zipcode,phone,creditcard,total) VALUES(?,?,?,?,?);
		<sql:param value='${param["username"] }'/>
		<sql:param value='${param["zipcode"] }'/>
		<sql:param value='${param["phone"] }'/>
		<sql:param value='${param["creditcard"] }'/>
		<sql:param value="10.0"></sql:param>
		</sql:update>
</body>
</html>