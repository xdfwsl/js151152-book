<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul{list-style:none;width:306px;}
li{float:left;width:150px;margin-top:3px;margin-right:3px;background:#CCC;;line-height:30px;}
 
</style>
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://10.10.10.11:3306/nieshaokang?useUnicode=true&characterEncoding=utf8" user="nieshaokang5" password="2271850"
 var="conn"/>
<sql:query var="rs" dataSource="${conn }">
select * from bookorder order by orderId
</sql:query>
<div>

<c:forEach var="row" items="${rs.rows }">
<ul>
<li>${row.orderId }</li>

<li>${row.total }</li>
</ul>
</c:forEach>

</div>
</table>
</body>
</html>