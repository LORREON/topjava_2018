<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meal</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Users</h2>
<br>

<ul>

    <c:forEach var="meal" items="${meals}">
        <li><c:out value="${meal}"/></li>
    </c:forEach>

</ul>
</body>
</html>
