<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.operation.*,java.util.*,com.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.main {
	width: 1000px;
	margin: 0 auto;
}

.book {
	width: 200px;
	text-align: center;
	margin-bottom: 20px;
	float: left;
}
</style>
</head>
<body>
	<div class="main">
		<%
			TitlesBean titlesBean = new TitlesBean();
			List titles = titlesBean.getTitles();//title里放着所有书
			BookBean currentBook;
			for (int i = 0; i < titles.size(); i++) {
				currentBook = (BookBean) titles.get(i);
				// out.println(currentBook.getISBN());
		%>
		<div class="book">
			<div>
				<img src='images/<%=currentBook.getImageFile()%>'>
			</div>
			<div><%=currentBook.getTitle().substring(1, 15)%>
			</div>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>