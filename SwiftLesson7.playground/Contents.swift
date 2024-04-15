//Lesson 7
// Home work

// 1) Вывести количство дней в месяцах года заданных массивом
// Создать второй массив с назаними месяцев и вывести в порядке с количеством дней
// Массив Тюплов для месяцев и количества дней в них
// Вывести количество дней в месяце в обратном порядке
// Посчитать количество дней до др
// 2) Высчитать сумму значений, час из которых nil, заданных массивом
// 3) Заполнить пустой массив типа "String", алфавитом задом неперёд

// Task 1.1
let daysInMonth = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]


for days in daysInMonth {
    print( days )      // Вывод количества дней в месяцых
}
print("")

// Task 1.2

let monthsNames = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]

for i in 0..<daysInMonth.count {
    print("\( monthsNames[i]) : \(daysInMonth[i] )")     // Вывод названий месяцев и количество дней в них
}
print("")
 
// Task 1.3

var tuplesArray = [(name: String, days: Int)]()

for i in 0..<daysInMonth.count {
    tuplesArray.append(( name: monthsNames[i], days: daysInMonth[i] ))    // Инициализация массив данными уже имеющимися данными
}

for month in tuplesArray {
    print("\( month.name ) : \( month.days )")      // Вывод массива тюплов :)
}
print("")

// Task 1.4

for day in (0 ..< daysInMonth.count).reversed() {  // Вывод количества дней в обратном порядке
    print( daysInMonth[day] )
}
print("")

// Task 1.4

let amountDaysInYear   = 365
let amountDaysInMonth  = [ "January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31 ]
let birthday           = (month: 10, day: 11)

var temp    = 0     // Временная переменная для цикла
var daysSum = 0

for (_, amountDays) in amountDaysInMonth{
    temp += 1
    if temp == birthday.month {
        print("Количество дней до твоего дня рождения:\(daysSum + birthday.day)")
    } else{
        daysSum += amountDays
    }
}
print("")

// Task 2

let constants: [ Int? ] = [ nil, 5, nil, 10, nil ]
var sum = 0


for constant in constants {     // optional binding
    if let value = constant {
        sum += value
    }
}

sum = 0

for constant in constants {     // force unwrapping
    if constant != nil {
        sum += constant!
    }
}

sum = 0

for constant in constants {     // "??"
    sum += constant ?? 0
}

for constant in constants {
    print("\( constant ?? nil ) + ", terminator: "" )
}

print(" = \( sum )\n")

//Task 3

let englishAlphabet    = "abcdefghijklmnopqrstuvwxyz"
var newEnglishAlphabet = [String]()

for (_, letter) in englishAlphabet.enumerated() {
    newEnglishAlphabet.insert( String(letter), at: 0 )  // Добавление значений вначало массива
}

print( newEnglishAlphabet )
