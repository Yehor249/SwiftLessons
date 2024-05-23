/*
 1. создать пару функций (3-4), которые возвращают строку с каким-то смайликом
 вывести в одном принте все функции
 2. функция, которая принимает строку и символ -> либо белая либо черная ( шахматы ), распечатать в принтерном резе переменную
 3. создать массив, создать функцию, которая принимает массив и возвращает его в обратном порядке
 4. функция принимает массив, и меняет сам массив в переменной. А? каво?
 5.функция принимает строку возвращает строку
 строка без знаков препинания, все гласные в заглавные, все согласные в маленькие, цифры изменены на словацифр
 */

// Task 1

func heartEmoji () -> String {
    let heart = "\u{2764}\u{FE0F}"
    return heart
}

func planetEmoji () -> String {
    let plane = "\u{2708}\u{FE0F}"
    return plane
}


func shipEmoji () -> String {
    let ship = "\u{26F5}"
    return ship
}

print("Heart - \(heartEmoji())\n"  +
      "Plane - \(planetEmoji())\n" +
      "Ship - \(shipEmoji())")

// Task 2


func chessboardLetters(letter: Character , number: Int) {
    let chessboardLetters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
    if let position = chessboardLetters.firstIndex(of: String(letter)) {
        if (position % 2 == number % 2) {
            print("Square is white")
        } else if number > 8 {
            print("The input data is incorrect")
        } else {
            print("Square is black")
        }
    } else {
        print("The input data is incorrect")
    }

}

print(chessboardLetters(letter: "a", number: 34))

// Task 3

let numbers = [1, 2, 3, 4, 5, 6, 7, 8]

func reverse1(array: [Int]) -> [Int] {
    var array = array
    let count = array.count
    for i in 0..<(count / 2) {
        array.swapAt(i, count - 1 - i)
    }
    return array
}

// Task 4

func reverse2( array: inout [Int] ) {
    let count = array.count
    for i in 0..<(count / 2) {
        array.swapAt(i, count - 1 - i)
    }
}

var array = [1,2,3,4,5]
reverse2(array: &array)
print(array)


// Task 5

var text = "The quick brown 1 fox jumps over the lazy dog. Every now and then, amazing things happen unexpectedly"


func filterText (text: String) -> String {
    var text2 = ""
    
    for symb in text.enumerated() {
        var character = symb.element
        switch character {
        case "a", "e", "i", "o", "u": text2 = text2 + character.uppercased()
        case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z": text2 = text2 + character.lowercased()
        case ",", ".", "!", "?", ":", ";", "-": text2 += " "
        default: text2 += character
        }
    }
    
    
    return text2
}


print(filterText(text: text))



