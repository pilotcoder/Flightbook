<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 20.06.2023
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
</head>
<body>

<h3>Wybierz Szybowiec</h3>






    <c:forEach items="${gliders}" var="gld">
      ${gld.name}
    </c:forEach>





</body>
</html>