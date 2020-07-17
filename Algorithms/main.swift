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
var arrayOfBooks: [Book] = [
    Book(author: "Gogol", title: "Dead souls"),
    Book(author: "Dostoevsky", title: "The Idiot"),
    Book(author: "Pushkin", title: "The Daughter of the Commandant"),
    Book(author: "Pushkin", title: "The Queen Of spades")
],
arrayOfNumbers: [Int8] = [1,1,1,2,4],
sortedArrayOfNumbers: [Int8] = [1,2,3,4,5,6,7,8],
someNumber = Int(Int8.random(in: 1...10))

print("Books:")
for book in arrayOfBooks {
    print("\(book.author) - \(book.title)")
}
print()
print(arrayOfNumbers)

print("\n*Linear search*")
//Authors check
SafeUnwrapAndPrintPosition(Search().LinearSearch(array: arrayOfBooks , searchingItem: Book(author: "Pushkin", title: "The Queen Of spades")))
//Numbers check
SafeUnwrapAndPrintPosition(Search().LinearSearch(array: arrayOfNumbers , searchingItem: 4))
print("\n*BetterLinear search*")
SafeUnwrapAndPrintPosition(Search().BetterLinearSearch(array: arrayOfNumbers , searchingItem: 4))
print("\n*SentinelLinear search*")
SafeUnwrapAndPrintPosition(Search().SentinelLinearSearch(array: arrayOfNumbers , searchingItem: 4))
print("\n*Recursion linear search*")
SafeUnwrapAndPrintPosition(Search().RecursiveLinearSearch(array: arrayOfNumbers, searchingItem: 4, startPosition: 0))
print("\n*Mine recursion linear search*")
SafeUnwrapAndPrintPosition(Search().MineRecursiveLinearSearch(array: &arrayOfNumbers, searchingItem: 4))
print("\n*Factorail*")
print("\(someNumber)! = \(Algorithm().Factorial(someNumber))")
print("\n*Binary search*")
SafeUnwrapAndPrintPosition(Search().BinarySearch(array: sortedArrayOfNumbers.map( { Int($0) }), searchingItem: 8))
print("\n*Recursive binary search*")
SafeUnwrapAndPrintPosition(Search().RecursiveBinarySearch(array: sortedArrayOfNumbers.map( { Int($0) } ), searchingItem: 8, to: sortedArrayOfNumbers.count - 1))
print()
