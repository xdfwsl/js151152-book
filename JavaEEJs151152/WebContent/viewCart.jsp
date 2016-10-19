<%@ page language="java" session="true" pageEncoding="GBK"%>
<%@ page import="com.entity.*"%>  
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%>


<html>

<head>
   <title>Shopping Cart</title>

<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="/store/images/main.css" type=text/css rel=stylesheet>
</head>

<body>



<CENTER>
<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff 
background=/store/images/top1bg.jpg border=0>
  <TBODY>
  <TR>
    <TD width=778>&nbsp;</TD></TR></TBODY></TABLE>
<TABLE class=center height=100 cellSpacing=0 cellPadding=0 width=778 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD align=middle width=150><IMG 
      title="" height=100 
      src="/store/images/logo.jpg" width=100 border=0></TD>
    <TD width=58>&nbsp;</TD>
    <TD vAlign=top width=110><IMG
      height=90 src="/store/images/top1.jpg" width=70 border=0></TD>
    <TD vAlign=top width=110><IMG 
      height=90 src="/store/images/top2.jpg" width=70 border=0></TD>
    <TD vAlign=top width=110><IMG 
       height=90 src="/store/images/top3.jpg" width=70 
      border=0></TD>
    <TD vAlign=top width=110><IMG 
      height=90 src="/store/images/top4.jpg" width=70 border=0></TD>
    <TD width=130>
     </TD></TR></TBODY></TABLE>

<TABLE class=center cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff 
border=0>
  <TBODY><TR>
    <TD style="FONT-SIZE: 1px" bgColor=#b0b0b0 colSpan=19 
  height=1></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 1px" bgColor=#dcdcdc height=3></TD></TR>
  <TR>
    <TD align=right background=/store/images/bn01.jpg height=120>&nbsp;</TD>
  </TR></TBODY></TABLE>

<TABLE height=15 cellSpacing=0 cellPadding=0 width=778 border=0>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 10px; LINE-HEIGHT: 10px" 
    background=/store/images/bnbg1.gif height=15></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff border=0 height="357">
  <TBODY>
  <TR>
    <TD vAlign=top width=168 height=400>
      <TABLE class=center height="100%" cellSpacing=0 cellPadding=0 width=168 
      bgColor=#ffffff background=/store/images/leftbg.gif border=0>
        <TBODY>
       
        <TR>
          <TD class=lefttd vAlign=top align=middle><BR>
            </TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top align=middle width=610>
      <TABLE cellSpacing=0 cellPadding=0 width="98%" 
      background=/store/images/top01.gif border=0>
        <TBODY>
        <TR>
          <TD align=left height=25><IMG height=11 src="/store/images/icon1.gif" 
            width=31>　购物车内商品：</TD></TR></TBODY></TABLE><BR>
      <TABLE style="TEXT-ALIGN: center" cellSpacing=0 cellPadding=0 width=590 
      border=0>
        <TBODY>


<!--   显示内容开始  -->

<%  
	Map cart = (Map) session.getAttribute("cart");
	double total = 0;

	if (cart == null || cart.size() == 0)
		out.println("<p>购物车当前为空.</p>");
	else {

		// 创建用于显示内容的变量
		Set cartItems = cart.keySet();
		//Iterator iterator = cartItems.iterator();
		Object[] isbn = cartItems.toArray();
		BookBean book;
		CartItemBean cartItem;

		int quantity;
		double price, subtotal;
%>
   <table cellSpacing=0 cellPadding=0 width=590 border=1>
      <thead><tr align="center">
         <th>书籍名称</th>
         <th>数量</th>
         <th>价格</th>
         <th>小计</th>
      </tr></thead>

<% // continue scriptlet 

			int i = 0;
			while (i < isbn.length) {

				// 计算总和
				cartItem = (CartItemBean) cart.get((String)isbn[i]);
				book = cartItem.getBook(); 
				quantity = cartItem.getQuantity();
				price = book.getPrice();
				subtotal = quantity * price;
				total += subtotal;
				i++;

%> 
         <tr>
            <td><%= book.getTitle() %></td>

            <td align="center"><%= quantity %></td>

            <td class = "right">
               <%= 
                  new DecimalFormat( "0.00" ).format( price )
               %>
            </td>

            <td class = "bold right">
               <%= 
                  new DecimalFormat( "0.00" ).format( subtotal ) 
               %>
            </td>
         </tr>

<% 

      }  

%> 
      <tr>
         <td colspan = "4" class = "bold right"><b>&#24635;&#35745;&#65306;  </b>
            <%= new DecimalFormat( "0.00" ).format( total ) %>
         </td>
      </tr>
   </table>

<% // continue scriptlet 

      // make current total a session attribute
      session.setAttribute( "total", new Double( total ) );
   }  // end of else

%> 
   <p class = "bold green">
      <a href = "/store/books.jsp">继续购物</a>
   </p>

   <!-- form to proceed to checkout -->
   <form method = "get" action = "/store/order.html">
      <p><input type = "submit" value = "结 账" /></p>
   </form>

<!--   显示内容结束  -->
				 </TBODY>
				 </TABLE>
      <BR></TD></TR></TBODY></TABLE>
<TABLE class=center cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD align=middle background=/store/images/bk.gif height=50>
    </TD></TR></TBODY></TABLE>

</CENTER></BODY></HTML>
