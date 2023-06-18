<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Wyszukiwanie lotów</title>
</head>
<body>
<h3>Wyszukaj loty:</h3>
<div>
    <p>Wybierz datę:</p>
    <form>
        <label for="flightDate">Email</label><input id="flightDate" name="flightDate" type="date">
        <input type="submit" value="Search">
    </form>
</div>
<hr/>
<div>

</div>
<hr/>
<a href="<c:url value='/flight/all'/>">Back to list of all authors</a>
</body>
</html>
