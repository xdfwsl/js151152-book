<%@ page language="java" pageEncoding="GBK"%>
<html>
  <head>   
    <title>��ʾJavaBean</title>
    
    <jsp:useBean id="order" class="cn.edu.xpc.js151152.w12.Order" scope="request"/>
    
    <jsp:setProperty name="order" property="username" param="username"/>
    <jsp:setProperty name="order" property="zipcode" param="zipcode"/>
    <jsp:setProperty name="order" property="phone" param="phone"/>
    <jsp:setProperty name="order" property="creditcard" param="creditcard"/>
    <jsp:setProperty name="order" property="total" value="23.45"/>
  
  </head>
  
  <body>
    �û�����<jsp:getProperty name="order" property="username"/>. <br>
    �ʡ��ࣺ<jsp:getProperty name="order" property="zipcode"/>. <br>
    ��  ����<jsp:getProperty name="order" property="phone"/>. <br>
    ���ÿ���<jsp:getProperty name="order" property="creditcard"/>. <br>
    �ܡ��ۣ�<jsp:getProperty name="order" property="total"/>. <br>
    
  </body>
</html>
