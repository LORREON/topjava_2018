package ru.javawebinar.topjava.repository;

import ru.javawebinar.topjava.model.Meal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class ImpFileMealRepository implements FileMealRepository {
    private Map<Integer, Meal> repository = new ConcurrentHashMap<>();
    private AtomicInteger counter = new AtomicInteger(0);

    {
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 28), LocalTime.of(10, 00)), "Сніданок", 500));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 28), LocalTime.of(12, 00)), "Обід", 1000));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 28), LocalTime.of(20, 00)), "Вечеря", 501));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 29), LocalTime.of(10, 00)), "Сніданок", 500));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 29), LocalTime.of(12, 00)), "Обід", 1000));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 29), LocalTime.of(20, 00)), "Вечеря", 500));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 30), LocalTime.of(10, 00)), "Сніданок", 500));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 30), LocalTime.of(12, 00)), "Обід", 1000));
        save(new Meal(LocalDateTime.of(LocalDate.of(2018, 10, 30), LocalTime.of(20, 00)), "Вечеря", 600));

    }



    @Override
    public Meal save(Meal meal) {
        if (meal.isNew()) {
            meal.setId(counter.incrementAndGet());
        }
        return repository.put(meal.getId(), meal);
    }

    @Override
    public void delete(int id) {
        repository.remove(id);
    }

    @Override
    public Meal get(int id) {
        return repository.get(id);
    }

    @Override
    public Collection<Meal> getAll() {
        return repository.values();
    }
}
