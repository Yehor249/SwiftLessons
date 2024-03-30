// Lesson 3

// Tuples

let simpleTuple = (1, "String", true, 2.3)

// Разбивка

let (number, greating, check, decimal) = simpleTuple

// Обращения к simpleTuple

number
greating
check
decimal

let (_, _, check2, _) = simpleTuple // Развязка Тюпла

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

// Названия для значений в тюпле, что-то типо славаря в Питоне

let tuple = (index:1, phrase: "Hello", registered: true, latency: 2.4)

tuple.index
tuple.latency
tuple.phrase
tuple.registered

// Что бы изменять значения в тюплах надо инициализировать как var

// Группировка значений с использованием инициализации как Тюпл

let totalNumber = 5
let merchanName = "Alex"

print("\(totalNumber) \(merchanName)")
print((totalNumber , merchanName))


//Home work
/*
 1) Создать праметризированый кортеж
 2) Сделать вывод параметров в отдельных строках
 3) Поменять местами изначальные значенния двух кортежей
 */

//Task 1

var mySportTraining = (pushUps:35, pullUps:12, squats:60 )

print(mySportTraining)

// Task 2

print("Ко-тво отжиманий: \(mySportTraining.pushUps)",
"\nКо-тво подтягиваний: \(mySportTraining.1)",
"\nКо-тво приседаний: \(mySportTraining.squats)")

//Task 3

var friendSportTraining = (pushUps:29, pullUps:10, squats:65 )

var temp: Int

// Смена данных местами с использованием временной переменной

temp = mySportTraining.pushUps
mySportTraining.pushUps = friendSportTraining.pushUps
friendSportTraining.pushUps = temp

temp = mySportTraining.pullUps
mySportTraining.pullUps = friendSportTraining.pullUps
friendSportTraining.pullUps = temp

temp = mySportTraining.squats
mySportTraining.squats = friendSportTraining.squats
friendSportTraining.squats = temp

// Вывод результата

print(mySportTraining)
print(friendSportTraining)
