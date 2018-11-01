<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <title>MealEdit</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>MealEdit</h2>
<hr>
<jsp:useBean id="meal" scope="request" type="ru.javawebinar.topjava.model.Meal"/>
<form action = "update" method = "POST">

    <table>
        <tr>
            <td><input type = "hidden" name = "id" value=""></td>
        </tr>
        <tr>
            <td>Date: </td>
            <td><input type = "datetime-local" name = "dateTime" value="${meal.dateTime}"/></td>
        </tr>
        <tr>
            <td>Description: </td>
            <td><input type = "text" name = "description" value="${meal.description}"/></td>
        </tr>
        <tr>
            <td>Calories: </td>
            <td><input type = "number" name = "calories" value="${meal.calories}"/></td>
        </tr>

            </table>
    <br>
    <input type="submit" value="Save">
    <input type="button" value="Cansel" onclick="windows.history.back()">




</form>

</body>
</html>
