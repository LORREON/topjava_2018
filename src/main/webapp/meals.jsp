<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <title>Meal</title>
</head>
<body>
<style type="text/css">
    .mytable {
        border-collapse: collapse;
        width: 30%;
    }

    .mytable td,
    .mytable th {
        border: 1px solid grey;
        font-family: Arial;
        text-align: center;
    }
</style>

<h3><a href="index.html">Home</a></h3>
<h2>Users</h2>
<br>

<table class="mytable">
    <tr>
        <th>Data/Time</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>

    <jsp:useBean id="mealsList" scope="request" type="java.util.List<ru.javawebinar.topjava.model.MealWithExceed>"/>
    <c:forEach var="meal" items="${mealsList}">
        <tr>
            <td><javatime:format value="${meal.getDateTime()}" style="MS"/></td>
            <td><c:out value="${meal.getDescription()}"/></td>
            <td style="color: ${meal.isExceed() ? "red" : "green"}" >
                <c:out value="${meal.getCalories()}"/></td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
