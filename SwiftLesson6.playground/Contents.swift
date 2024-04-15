// Swift Lesson 6
// Home Work
// 1) Вывести строкой сумму 5-и констант используя оператор - "??", применив инерполяцию и конкатенацию .
// 2) Посчитать количество символов в строке с использованием емодзи
// 3)

//Task 1

//var constTuple : (const1: Int?, const2: Int?, const3: Int?, const4: Int?,const5: Int?) = (nil, nil, nil, nil, nil)

let const1 = "60"
let const2 = "60adsdsa"
let const3 = "12"
let const4 = "f56dsa"
let const5 = "32"
var sum    = 0

sum = (Int(const1) ?? 0) + (Int(const2) ?? 0) + (Int(const3) ?? 0)
sum = sum + (Int(const4) ?? 0) + (Int(const5) ?? 0)   // Разделение выражения так как компелятору трудно :(

print(sum)

print("\(Int(const1) ?? nil) + \(Int(const2) ?? nil) + \(Int(const3) ?? nil) + \(Int(const4) ?? nil) + \(Int(const5) ?? nil) = \(sum) ")

// Task 2

let heart  = "\u{1F496}"
let star   = "\u{2728}"
let rocket = "\u{1F680}"
let done   = "\u{2705}"
let emoji  = "\u{1F603}"

let funSrring = "Heart - \(heart)\nStar - \(star)\nRocket - \(rocket)\nDone - \(done)\nEmoji - \(emoji)"

let amountSymbols = funSrring.filter { !$0.isWhitespace && !$0.isNewline }.count // Количество символов без пробела и перевода на новую строку
print(funSrring)
print(amountSymbols)

// Task 3 "Alphabet"

let englishAlphabet = "abcdefghijklmnopqrstuvwxyz"

var lettrToFind: String? = "g"
var temp = 0

if let letter1 = lettrToFind {
    for (index, letter2) in englishAlphabet.enumerated() {
        if String(letter2) == letter1 {
            print("Letter '\(letter1)' position in the alphabet: \(index + 1)")
            break
        }
    }
} else {
    print("No letter was entered")
}


