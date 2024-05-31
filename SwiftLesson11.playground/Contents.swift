/*
 Lesson 11 - Closures
 Homework
 1) Написать функцию, которая принимает, один клоужер, добавить в тело функции цикл for от 1 до 10 и вывести эти цифры и вызвать клоужер
  2) Создать массив Int, используя функцию sorted  отсортировать массив по возрастанию и убыванию
 3) Написать функцию, которая принимает массив Int и клоужер и возвращает Int. Клоужер должен принимать 2 Int (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную. Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
  4) Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
 */

// Task 1

func numPrint (letterPrint: () -> Void ){
    for num in 1...10 {
        letterPrint()
        print(num)
    }
}

numPrint { print("Hi") }

// Task 2

var array = [14, 3, 12, 68, 14, 64, 7]

let array2 = array.sorted(by: >)

print(array2)

// Task 3

func filterNum (numArray: [Int], sort: (Int, Int?) -> Bool) -> Int {
    var optionalNum: Int?
    
    for number in numArray {
        if sort(number, optionalNum) {
            optionalNum = number
        }
    }
    return optionalNum ?? 0
}

let result1 = filterNum(numArray: array) { number, optionalNum in
    optionalNum == nil || number < optionalNum!  }

let result2 = filterNum(numArray: array) { number, optionalNum in
    optionalNum == nil || number > optionalNum! }

//print(result1)

// Task 4   сам не смог додуматься, решение взял из разбора домашки ;)

let randomString = "The 1 quick brown fox jumps over the lazy dog. Every now and then, amazing things happen unexpectedly. Keep your 2 eyes open, and you might see something extraordinary unfold before your very eyes. Believe in magic. 5"

func priority (string: String) -> Int {
    switch string.lowercased() {
    
    case "a", "e", "i", "o", "u", "y" :
        return 0
    
    case "a"..."z":
        return 1
    
    case "0"..."9":
        return 2
        
    default:
        return 3
    }
}


    
//let stringArray = String(Array(randomString))
  
var stringArray = [String]()

for c in randomString {
    stringArray.append(String(c))
}

let sort = stringArray.sorted {
    
    switch (priority(string: $0), priority(string: $1)) {
    case let (x, y) where x < y: return true
    case let (x, y) where x > y: return false
    default: return $0.lowercased() <= $1.lowercased()
    }
}

print(sort)
