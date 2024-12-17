% База данных рейсов: номер рейса, пункт прибытия, стоимость билета
flight(101, 'Москва', 5000).
flight(102, 'Санкт-Петербург', 4500).
flight(103, 'Москва', 4000).
flight(104, 'Екатеринбург', 3500).
flight(105, 'Москва', 3000).
flight(106, 'Сочи', 6000).

% Предикат для поиска рейсов с минимальной стоимостью до города
flights_to_city :-
    write('Введите название города: '), read(City),
    findall(Cost, flight(_, City, Cost), Costs),
    min_list(Costs, MinCost),
    write('Рейсы с минимальной стоимостью: '), nl,
    print_flights(City, MinCost).

% Печать рейсов с минимальной стоимостью
print_flights(City, MinCost) :-
    flight(Number, City, MinCost),
    format('Рейс ~w: Пункт прибытия - ~w, Стоимость - ~w~n', [Number, City, MinCost]),
    fail.
print_flights(_, _).


