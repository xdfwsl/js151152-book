<%@ page contentType="text/html;charSet=GBK" pageEncoding="GBK"%>

<jsp:useBean id="userManager" class="cn.edu.xpc.js151152.w12.UserManager" scope="session"/>

<jsp:setProperty name="userManager" property="name" param="loginName" />
<jsp:setProperty name="userManager" property="password" param="password" />

<%
if (userManager.getValid()) {
%>
<jsp:forward page="books.jsp" />
<%
} else {
%>
<jsp:forward page="register.html" />
<%
}
%>
