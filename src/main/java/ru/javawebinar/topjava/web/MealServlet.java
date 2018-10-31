package ru.javawebinar.topjava.web;

import ru.javawebinar.topjava.model.MealWithExceed;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.LinkedList;
import java.util.List;

public class MealServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MealWithExceed> meals = new LinkedList<>();
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,28), LocalTime.of(10,00)),"Сніданок",500, true));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,28), LocalTime.of(12,00)),"Обід",1000, true));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,28), LocalTime.of(20,00)),"Вечеря",501, true));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,29), LocalTime.of(10,00)),"Сніданок",500, false));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,29), LocalTime.of(12,00)),"Обід",1000, false));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,29), LocalTime.of(20,00)),"Вечеря",500, false));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,30), LocalTime.of(10,00)),"Сніданок",500, true));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,30), LocalTime.of(12,00)),"Обід",1000, true));
        meals.add(new MealWithExceed(LocalDateTime.of(LocalDate.of(2018,10,30), LocalTime.of(20,00)),"Вечеря",600, true));

        request.setAttribute("mealsList", meals);
        request.getRequestDispatcher("/meals.jsp").forward(request, response);

    }
}
