
/* Lesson 2
Задание:
1) С помощью функции "print" вывести все используемые диапазоны.
2) Создать константы (Int) (Double) (Float) c разными числами отличными от 0.
3) Создать константы
3.1) Int - сумма всех трех
3.2) Float - сумма всех трех
3.3) Double - сумма всех трех
4) Создать условие если сумма Int меньше суммы Doubl, то вывести "Double точнее"
*/

// Task 1

let int8Min  = Int8.min
let int8Max  = Int8.max
let uInt8Min = UInt8.min
let uInt8Max = UInt8.max

print("Integer min - \(int8Min)",
      "\nInteger max - \(int8Max)",
      "\nUnsigned Integer min - \(uInt8Min)",
      "\nUnsigned Integer max - \(uInt8Max)")

//Task 2

let intNum    = 2
let floatNum  = Float(2)
let doubleNum = 2.2

//Task 3

let intNumSum    = intNum + Int(floatNum) + Int(doubleNum)
let floatNumSum  = Float(intNum) + floatNum + Float(doubleNum)
let doubleNumSum = Double(intNum) + Double(floatNum) + doubleNum

//Task 4

if Double(intNumSum) < doubleNumSum {
    print("Double number sum = \(doubleNumSum)")
}

