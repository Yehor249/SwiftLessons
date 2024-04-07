//  Lesson 5
//  Basic operators
//  Home Wor
// 1) Используя арифметичиские уравнения посичтать количество секунд от начала года до  моего ДР (11.09)
// 2) Вывести на екран квартал в котором ты родился
// 3) Высчитать какого цвета квадрат на шахмотной доске иммея заданные параметры столбца и ряда

let amountDaysInYear   = 365
let amountDaysInMonth  = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]
let amountSecondsInDay = 86_400
let birthday           = (month: 10, day: 11)

var temp    = 0     // Временная переменная для цикла
var daysSum = 0

for (_, amountDays) in amountDaysInMonth{
    temp += 1
    if temp == birthday.month {
        print("Количество секунд до твоего дня рождения:\(amountSecondsInDay * (daysSum + birthday.day))")
        
        if Double(temp) / 3 <= 1 {
            print("Ты родился в 1 квартале")
        } else if Double(temp) / 3 > 1 && Double(temp) / 3  <= 2 {
            print("Ты родился в 2 квартале")
        } else if Double(temp) / 3 > 2 && Double(temp) / 3  <= 3 {
            print("Ты родился в 3 квартале")
        } else if Double(temp) / 3 > 3 && Double(temp) / 3  <= 4 {
            print("Ты родился в 4 квартале")
        }
        
    } else{
        daysSum += amountDays
    }
}


// Шахмотная доска

let row    = 2
let column = 6

if row % 2 == 0 && column % 2 == 0 || row % 2 != 0 && column % 2 != 0 {
    print("Квадрат чёрный")
} else {
    print("Квадрат белый")
}
