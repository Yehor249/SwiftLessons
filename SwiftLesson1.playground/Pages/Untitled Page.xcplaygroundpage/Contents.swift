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






