//
//  main.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 13.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

func SafeUnwrapAndPrintPosition<T>(_ message: String?,_ someOptionalValue: Int?,_ searchedItem: T) {
    print("\n*\(message ?? "Some function")*")
    guard let position = someOptionalValue else {
        return print("\(searchedItem) not found")
    }
    return print("\(searchedItem): found on \(position) position")
}

func Main () {
var arrayOfBooks: [Book] = [
    Book(author: "Gogol", title: "Dead souls"),
    Book(author: "Dostoevsky", title: "The Idiot"),
    Book(author: "Pushkin", title: "The Daughter of the Commandant"),
    Book(author: "Pushkin", title: "The Queen Of spades")
],
arrayOfNumbers: [Int] = [1,5,3,2,4],
sortedArrayOfNumbers: [Int] = [1,2,3,4,5,6,7,8],
randomNumber = Int.random(in: 1...10)

SafeUnwrapAndPrintPosition("Linear search. Authors",Search().LinearSearch(array: arrayOfBooks , searchingItem: Book(author: "Pushkin", title: "The Queen Of spades")), Book(author: "Pushkin", title: "The Queen Of spades"))
SafeUnwrapAndPrintPosition("Linear search. Authors", Search().LinearSearch(array: arrayOfNumbers , searchingItem: randomNumber), randomNumber)
SafeUnwrapAndPrintPosition("BetterLinear search", Search().BetterLinearSearch(array: arrayOfNumbers , searchingItem: randomNumber), randomNumber)
SafeUnwrapAndPrintPosition("SentinelLinear search", Search().SentinelLinearSearch(array: arrayOfNumbers , searchingItem: randomNumber), randomNumber)
SafeUnwrapAndPrintPosition("Recursion linear search", Search().RecursiveLinearSearch(array: arrayOfNumbers, searchingItem: randomNumber, startPosition: 0), randomNumber)
SafeUnwrapAndPrintPosition("Mine recursion linear search", Search().MineRecursiveLinearSearch(array: &arrayOfNumbers, searchingItem: randomNumber), randomNumber)
print("\n*Factorail*")
print("\(randomNumber)! = \(Algorithm().Factorial(randomNumber))")
SafeUnwrapAndPrintPosition("Binary search", Search().BinarySearch(array: sortedArrayOfNumbers.map( { Int($0) }), searchingItem: randomNumber), randomNumber)
SafeUnwrapAndPrintPosition("Recursive binary search", Search().RecursiveBinarySearch(array: sortedArrayOfNumbers.map( { Int($0) } ), searchingItem: randomNumber, to: sortedArrayOfNumbers.count - 1), randomNumber)
var tempArr = sortedArrayOfNumbers.map( { Int($0) } )
SafeUnwrapAndPrintPosition("MineRecursiveBinarySearch", Search().MineRecursiveBinarySearch(array: &tempArr, searchingItem: randomNumber, to: sortedArrayOfNumbers.count - 1), randomNumber)
print()
}

Main()
