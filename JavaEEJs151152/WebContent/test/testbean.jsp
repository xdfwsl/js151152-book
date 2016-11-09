<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="book" class="com.entity.BookBean"></jsp:useBean>
	<jsp:setProperty property="title" name="book" value="xxx"/>
	<%-- <jsp:setProperty property="title" name="book" value="<%= request.getParameter("title2") %>"/> --%>
	<jsp:setProperty property="title" name="book" param="title2"/>

<%-- <% BookBean book=new BookBean();   
   //book.setTitle("xxx");
   book.setTitle(request.getParameter("title2"));  

%> --%>
<jsp:getProperty property="title" name="book"/>
<%-- 	<%=book.getTitle()%> --%>

</body>
</html>