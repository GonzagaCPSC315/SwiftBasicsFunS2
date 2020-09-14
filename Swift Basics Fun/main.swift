//
//  main.swift
//  Swift Basics Fun
//
//  Created by Gina Sprint on 9/1/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")
print("Another print statement")

// one line comment
/*
 this is
 a
 multi line comment
 */

// MARK: - Variables
// every type in swift is an object, which means there are no primitives
var temperature: Int = 75
print(temperature)
// swift can infer types
var temperature2 = 74.9
// Int, Float, Double, Bool, Character, String, Array, Set, Dictionary, etc.
// use let to declare a constant
let month = "September"
let day = 1
print(month)
// string interpolation
print("Today is \(month) \(day)")
// task 1: declare two constants, one for your first name and one for your last name
// print on one line "gina sprint has 10 characters"
let firstName = "gina"
let lastName = "sprint"
let numChars = firstName.count + lastName.count
print("\(firstName) \(lastName) has \(numChars) characters")

// MARK: - Arrays
var colors: [String] = ["red", "green", "blue"]
print(colors)
print(colors.count)
print(colors.isEmpty)
// arrays are 0 based indexing
print(colors[0])
// arrays can grow and shrink in size
colors.append("yellow")
print(colors)
// task 2: try removing the first element of the array
colors.remove(at: 0)
print(colors)

// MARK: - Random Numbers
// lets we roll a 6-sided die
let randNum = arc4random_uniform(6) + 1
print(randNum)
// type cast
let randNumInt: Int = Int(randNum)

// MARK: - Conditionals
// C style if/else if/else structure
// switch structure (cover it later)
var x = 100
if x >= 100 {
    print("x is large")
}
else {
    print("x is small")
}

// MARK: - Loops
// 3 loops
// C style while loop, C style repeat while loop (do while), Swifty for in loop
// no C style for loop: for (int i = 0; i < 10; i++)
for i in 0..<10 {
    print(i, terminator: ", ")
}
print()

// task 3: solve this problem using each of the 3 loops
// print out the first 20 even numbers
// 2, 4, 6, ... 40
// while loop
var i = 2
while i <= 40 {
    print(i, terminator: " ")
    i += 2
}
print()

// repeat while loop
i = 2
repeat {
    print(i, terminator: " ")
    i += 2
} while i <= 40
print()

// for in loop
for i in stride(from: 2, to: 42, by: 2) {
    print(i, terminator: " ")
}
print()

// MARK: - Optionals
// an optional is a variable that can either store a value OR nil
var myOptionalInt: Int? = nil
// to find out if there is a value in myOptionalInt, we need to "unwrap" it
// 2 ways to unwrap
// 1. force unwrapping (not best practice)
myOptionalInt = 10
var myInt: Int = myOptionalInt!
print(myInt)

// 2. optional binding (best practice)
// if there is a value in the optional, store it in a temporary variable
// then use that variable safely
if let myInt2 = myOptionalInt {
    // safely use myInt2
    print(myInt2)
}
else {
    print("myOptionalInt is nil")
}

// caution: don't be tempted to do this...
if myOptionalInt != nil {
    myInt = myOptionalInt!
}

// warm up task
//var friends = ["Chandler", "Ross", "Monica", "Rachel"]
//print(friends)
//print(friends.count)
//friends.insert("Joey", at: 1)
//print(friends)
//
//print("Enter a name to remove: ", terminator: "")
//let inputStringOptional = readLine()
//if let inputString = inputStringOptional {
//    print("trying to remove \(inputString)")
//    let optionalIndex = friends.firstIndex(of: inputString)
//    if let myIndex = optionalIndex {
//        friends.remove(at: myIndex)
//        print(friends)
//
//        //let myIntOptional = Int(inputString)
//    }
//}

// MARK: - Functions
// no params, no return
func sayHello() {
    print("hello")
}
// in main.swift we can have executable code outside of a function
sayHello()

// one param, no return
// message is both the internal and external name
func say(message: String) {
    print(message)
}
say(message: "hola") // message is the argument label (external parameter name)

// task 4: define/call a function that accepts radius and prints
// out the area of a circle with that radius
// withRadius is the external parameter name
func computeCircleArea(withRadius radius: Double) {
    let area = Double.pi * pow(radius, 2)
    print(area)
}
// reads like an english setence
computeCircleArea(withRadius: 5.0)

// _ is the anonymous variable name
// one param, with return type
func computeCircleArea2(_ radius: Double) -> Double {
    let area = Double.pi * pow(radius, 2)
    return(area)
}
print(computeCircleArea2(5.0))

// objects that are enums or structs are pass by value
// objects that are classes are pass by reference
// Int, Double, Array, String, Bool, etc. are structs
// to pass a struct by reference, use the inout keyword
func increment(value: inout Int, by incrementValue: Int) {
    value += incrementValue // value is an alias... changes persist to the calling code
}
var y = 5
increment(value: &y, by: 100)
print(y)

// MARK: - Strings
// a String is a sequence of Characters
// a Character is one or more Unicodes
// 143,000+ unicode characters
// Swift is fully unicode compliant
// ctrl + cmd + spacebar bring up the character viewer
var dragon = "🐉"
print(dragon)
var 🐉 = "dragon"
print(🐉)
// concatenation +
// relational operators < <= > >=
// equality operators == !=
// useful properties (count, isEmpty, etc.) and methods (lowercased(), contains(), hasSuffix(), ...)
// string indexing
// you cannot do [0]
// instead you have to use String.Index object
var course = "CPSC315"
// print the first C
let indexOfFirstCharacter = course.startIndex
print(course[indexOfFirstCharacter]) // like [0]

// print the 3
let indexOfFourthCharacter = course.index(course.startIndex, offsetBy: 4)
print(course[indexOfFourthCharacter]) // like [4]

// task 5: define/call a function that accepts two strings
// return true if the two strings have the same last character
// return false otherwise
// "gonzaga", "zebra" -> True
// "gonzaga", "spokane" -> False

func hasSameLastCharacter(_ string1: String, _ string2: String) -> Bool {
    // should check to make sure both strings have at least one character
    let lastIndex1 = string1.index(before: string1.endIndex)
    let lastIndex2 = string2.index(before: string2.endIndex)

    return string1[lastIndex1] == string2[lastIndex2]
}

print(hasSameLastCharacter("gonzaga", "zebra"))
print(hasSameLastCharacter("gonzaga", "spokane"))

