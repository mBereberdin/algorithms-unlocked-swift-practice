//
//  main.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 13.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

func SafeUnwrapAndPrintPosition (_ someOptionalValue: Int?) {
    guard let position = someOptionalValue else {
        return print("Item not found")
    }
    return print("Item found on \(position) position")
}

//Main
var arrayOfAuthors =  ["Visockiy","Pushkin","Sholohov"],
arrayOfNumbers: [Int8] = [1,1,1,2,4],
sortedArrayOfNumbers: [Int8] = [1,2,3,4,5,6,7,8],
someNumber = Int(Int8.random(in: 1...10))

print(arrayOfNumbers)
print(arrayOfAuthors)

print("\n*Linear search*")
//Authors check
SafeUnwrapAndPrintPosition(Search().LinearSearch(array: arrayOfAuthors , searchingItem: "Sholohov"))
//Numbers check
SafeUnwrapAndPrintPosition(Search().LinearSearch(array: arrayOfNumbers , searchingItem: 4))
print("\n*BetterLinear search*")
SafeUnwrapAndPrintPosition(Search().BetterLinearSearch(array: arrayOfNumbers , searchingItem: 4))
print("\n*SentinelLinear search*")
SafeUnwrapAndPrintPosition(Search().SentinelLinearSearch(array: arrayOfNumbers , searchingItem: 4))
print("\n*Recursion linear search*")
SafeUnwrapAndPrintPosition(Search().RecursiveLinearSearch(array: arrayOfNumbers, searchingItem: 4, index: 0))
print("\n*Mine recursion linear search*")
SafeUnwrapAndPrintPosition(Search().MineRecursiveLinearSearch(array: &arrayOfNumbers, searchingItem: 4))
print("\n*Factorail*")
print("\(someNumber)! = \(Algorithm().Factorial(someNumber))")
print("*Binary search*")
SafeUnwrapAndPrintPosition(Search().BinarySearch(array: sortedArrayOfNumbers.map( { Int($0) }), searchingItem: 8))
print("*Recursive binary search*")
SafeUnwrapAndPrintPosition(Search().RecursiveBinarySearch(array: sortedArrayOfNumbers.map( { Int($0) } ), searchingItem: 8, rightBorder: sortedArrayOfNumbers.count - 1))
print("\n")
