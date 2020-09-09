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
