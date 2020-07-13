//
//  main.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 13.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

//vars
var shelf =  ["Visockiy","Pushkin","Sholohov"],
numbers: [Int8] = [1,1,1,2,4],
fakeArr: [String] = []
//body
Search().LinearSearch(array: fakeArr, searchingItem: "a")
//Linear search
print(numbers)
print(shelf)
print("\nLinear\n")
//String
if let position = Search().LinearSearch(array: shelf , searchingItem: "Sholohov") {
    print("Item found on \(position+1) position")
}else{
    print("Item not found")
}
//Int
if let position = Search().LinearSearch(array: numbers , searchingItem: 4) {
    print("Item found on \(position+1) position")
}else{
    print("Item not found")
}

//Better linear search
print("\nSentinelLinear\n")
if let position = Search().SentinelLinearSearch(array: numbers , searchingItem: 4) {
    print("Item found on \(position+1) position")
}else{
    print("Item not found")
}
print("\n")
