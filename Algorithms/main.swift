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

print("\nLinear search")
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
print("\nBetterLinear search\n")
//Numbers
if let position = Search().BetterLinearSearch(array: arrayOfNumbers , searchingItem: 4) {
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
print("\nSentinelLinear search\n")
//Numbers
if let position = Search().SentinelLinearSearch(array: arrayOfNumbers , searchingItem: 4) {
    print("Item found on \(position) position")
}else{
    print("Item not found")
}
print("\n")
