<%@page contentType="text/html; charset=GBk" %>
<html>
<head>
<title>�� JSP ��ʹ�� JavaBean</title>
<jsp:useBean id="bean" class="cn.edu.xpc.js151152.w12.Simplebean" scope="request"/>
<jsp:setProperty name="bean" property="name" value="${param.username}"/>
<jsp:setProperty name="bean" property="age" value="25"/>
</head>
<body>  ������
<jsp:getProperty name="bean" property="name"/>
<br/>
  ���䣺
<jsp:getProperty name="bean" property="age"/>
</body>
</html>
