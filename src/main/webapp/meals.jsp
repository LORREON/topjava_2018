<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <title>Meals</title>
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
        <th>Update</th>
        <th>Delete</th>
    </tr>


    <c:forEach items="${mealsList}" var="meal">
        <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealWithExceed"/>
        <tr>
            <td><javatime:format value="${meal.dateTime}" style="MS"/></td>
            <td>${meal.description}</td>
            <td style="color: ${meal.exceed ? "red" : "green"}">${meal.calories}</td>
            <td><a href="meals?action=update&id=${meal.id}">Update</a> </td>
            <td><a href="meals?action=delete&id=${meal.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
