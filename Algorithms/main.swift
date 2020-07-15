//
//  main.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 13.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

var arrayOfAuthors =  ["Visockiy","Pushkin","Sholohov"],
arrayOfNumbers: [Int8] = [1,1,1,2,4]

print(arrayOfNumbers)
print(arrayOfAuthors)

print("\n*Linear search*")
//Authors
if let position = Search().LinearSearch(array: arrayOfAuthors , searchingItem: "Sholohov") {
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
//Numbers
if let position = Search().LinearSearch(array: arrayOfNumbers , searchingItem: 4) {
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
print("\n*BetterLinear search*")
//Numbers
if let position = Search().BetterLinearSearch(array: arrayOfNumbers , searchingItem: 4) {
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
print("\n*SentinelLinear search*")
//Numbers
if let position = Search().SentinelLinearSearch(array: arrayOfNumbers , searchingItem: 4) {
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
//RecursionLinearSearch
print("\n*Recursion linear search*")
if let position = Search().RecursiveLinearSearch(array: arrayOfNumbers, searchingItem: 4, index: 0){
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
//MineRecursiveLinearSearch
print("\n*Mine recursion linear search*")
if let position = Search().MineRecursiveLinearSearch(array: &arrayOfNumbers, searchingItem: 4){
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
//Alg
print("\n*Factorail*")
var someNumber = 3
print("\(someNumber)! = \(Algorithm().Factorial(someNumber))")
print("\n")
