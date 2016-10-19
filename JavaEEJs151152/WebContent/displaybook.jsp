<%@ page language="java" import="java.util.*,com.entity.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title> 	<style type="text/css">
.main{
width: 1000px;
margin: 0 auto;
}

.book{
width: 200px;
margin-bottom: 20px;
text-align: center;
float:left;
}


</style>
</head>
<body> 

<% 
	List titles=(List)session.getAttribute("titles");//取出上个页面存的书们!
	int size=titles.size();//里面有几书我得知道呀
	String isbn=request.getParameter("isbn");//得到上个页面传过的书号
	BookBean book=null;//准备一个BookBean对象,将来遍历时存放书.
	int i=0;
	while(i<size){
		book=(BookBean)titles.get(i);
		if(book.getISBN().equals(isbn)){
			// 保存书籍到session属性
			session.setAttribute("bookToAdd", book);
			break;
		}
		i++;
	}
%>
<div class="main"><div class="book"><img src="/JavaEEJs151152/images/<%=book.getImageFile()%>"></div><div><%=book.getISBN()%></div></div>



</body>
</html>