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
