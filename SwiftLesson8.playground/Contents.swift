// Lesson 8
// Homework

/*
 1. создать дикшинари студентов, где ключ имяФамилия, а значение - оценка
 парочке студентам повысить оценку
 добавить еще студентов и их оценки
 удалить пару студентов и их оценки
 посчитать общий балл группы и средний балл

 2.создать дикшинари месяца и дни, String: Int
 вывести экран циклом тюплом
 вывести экран циклом пройдя по массивам ключей

 3.создать дикшинари у которой ключ это адрес ячейки на шахматной доске, а значение - bool, где черн - тру, а белая - фолс
 */

//  Task 1

var students = ["Max": 11, "Carlos": 2, "Lando": 5, "Gorge": 10]

students["Max"]    = 12
students["Carlos"] = 11     // points up

students.removeValue(forKey: "Carlos")  // dell students

var sumPoints: Int = 0
var meanPoints: Double = 0

for (_,points) in students{
    sumPoints += points
}

meanPoints = Double(sumPoints) / Double(students.count)

print(sumPoints, meanPoints)

// Task 2

let amountDaysInMonth  = [ "January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31 ]

let maxLength = amountDaysInMonth.keys.map { $0.count }.max() ?? 0  // by gpt)

print("\tMonth name \(String(repeating: " ", count: maxLength - 9))Amount days")

for (monthName, amountDays) in amountDaysInMonth {
    let padding = String(repeating: " ", count: maxLength - monthName.count)
    print("\t\(monthName)\(padding)\t\(amountDays)")
}

// Task 3

let chessboardLetters = ["a", "b", "c", "d", "e", "f", "g", "h"]
let chessboardNumbers = [1, 2, 3, 4, 5, 6, 7, 8]

var chessCoordinates: [String: Bool] = [:]
var count = 0

for letters in chessboardLetters {
    count += 1
    for numbers in chessboardNumbers {
        if count % 2 == 0 && numbers % 2 == 0 || count % 2 != 0 && numbers % 2 != 0 {
            chessCoordinates["\(letters + String(numbers))"] = true
        } else{
            chessCoordinates["\(letters + String(numbers))"] = false
        }
    }
}

print(chessCoordinates["e4"]!)  // True - black, False - white
