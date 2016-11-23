 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="userManager" class="cn.edu.xpc.js151152.w12.UserManager"
scope="request" />

<jsp:setProperty name="userManager" property="name" param="loginName" />
<jsp:setProperty name="userManager" property="password" param="password" />

<c:if test="${userManager.valid}">
      <jsp:forward page="books2.jsp" />
</c:if>
<c:if test="${!userManager.valid}">
     <jsp:forward page="register.html" />
</c:if>
