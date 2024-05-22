// Lesson 9
// Homework

/*
 1.  создать строку произвольного текста с 200 символами
 создать цикл со свичем, посчитать кол-во гласных, согласных, цифр и тд
 2. создать свитч, который принимает возраст и возвращает период жизни
 3. студент с ФИО
 если его имя начинается с А или О, то обращаться по И
 если его отчество начинается с В или Д, то обращаться по ИО
 если его фамилия начинается с Е или З, то обращаться по фамилии,
 иначе обращаться по ФИО
 4. Поле морского боя 10х10
 осталось несколько кораблей
 создать такой свитч, который получает тюпл поинт (x,y)
 вернуть мимо // ранил // убил
 */

// Task 1

let text = "The quick brown fox jumps over the lazy dog. Every now and then, amazing things happen unexpectedly. Keep your eyes open, and you might see something extraordinary unfold before your very eyes. Believe in magic."

var vowelsAmount     = 0
var consonantsAmount = 0
var symbolAmount     = 0



for symb in text.enumerated() {
    let character = symb.element
    switch character {
    case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U": vowelsAmount += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z": consonantsAmount += 1
    case ",", ".", "!", "?", ":", ";", "-": symbolAmount += 1
    default: break
    }
}
print("Task 1 results\n\n" +
    "Количество гласных: \(vowelsAmount)\n" +
    "Количество согласных: \(consonantsAmount)\n" +
    "Количество символов: \(symbolAmount)\n")


// Task 2

let age = Int.random(in: 1...100)
var message: String = ""

switch age {
case 1...17:   message   = "подросток!"
case 18...29:  message   = "молодой/ая!"
case 30...59:  message   = "взрослый/ая!"
case 60...100: message   = "пенсионер!"
    
default: break
}

print("Task 2 results\n\n" +
      "Твой возраст - \(age) и ты \(message)")

// Task 3
print("Task 3 results\n\n")

let firstname  = "Егор"
let secondname = "Недов"
let patronymic = "Борисович"

let student = (firstname.first, secondname.first, patronymic.first)


switch student {
case ("А", _, _), ("О", _, _) : print("Привет \(firstname)")
case (_, _, "В"), (_, _, "Д") : print("Привет \(firstname) \(patronymic)")
case (_, "Е", _), (_, "З", _) : print("Привет \(secondname)")
    
default:print("Привет \(secondname) \(firstname) \(patronymic)")
}

// Task 4

let ship1 = (x1: 2, y1: 3, x2: 2, y2: 5)
let ship2 = (x1: 3, y1: 8, x2: 3, y2: 8)

let ships = [ship1, ship2]

let shot = (x: 3, y: 8)

for ship in ships{
    switch shot {
    case (ship.x1, ship.y1) where ship.x1 == ship.x2 && ship.y1 == ship.y2: print("Убил")
    case (ship.x1...ship.x2, ship.y1...ship.y2): print("Ранил")
    default: print("Мимо")
    }
}
