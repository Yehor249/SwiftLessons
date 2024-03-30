

//Home work

// 1. Сумировать 5 констант (цифры, буквы, цифры и буквы) с использованием разных способов приведения к Int
// 2.

let const1 = "60"
let const2 = "60adsdsa"
let const3 = "12"
let const4 = "f56dsa"
let const5 = "qef"
var sum    = 0

var mySum: String? = "123"

if let mySum {
    print(mySum.count)
}


if let newConst1 = Int(const1){
    sum += newConst1
}

if let newConst2 = Int(const2){
    sum += newConst2
}

if let newConst4 = Int(const3){
    sum += newConst4
}

if Int(const4) != nil{
    sum += Int(const4)!
}

if Int(const5) != nil{
    sum += Int(const5)!
}

print(sum)

// Task 2
let tuple: (codeStatus: Int, message: String?, errorMessage: String?) = (256, "We have a problem", "Check Engine")



// Task 3

var student1: (studentName: Int?, carNumber: String?, testScore: Int?) = (nil, nil, nil)
var student2: (studentName: Int?, carNumber: String?, testScore: Int?)
var student3: (studentName: Int?, carNumber: String?, testScore: Int?)
var student4: (studentName: Int?, carNumber: String?, testScore: Int?)
var student5: (studentName: Int?, carNumber: String?, testScore: Int?)
