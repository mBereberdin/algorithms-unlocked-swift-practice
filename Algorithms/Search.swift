//
//  Search.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 13.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

class Search{
    
    /// Linear search. Return last position if item founded or nil.
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    /// - Returns: Position if exist or nil.
    public func LinearSearch<T: Equatable>(array:[T],searchingItem: T) -> Int? {
        var answer: Int? = nil
        for (index,element) in array.enumerated() {
            if element == searchingItem {
                answer = index
            }
        }
        return answer
    }
    
    /// Better linear search (faster then linear search). Return first position if item founded else nil.
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    /// - Returns: Position if exist else nil.
    public func BetterLinearSearch<T: Equatable>(array:[T],searchingItem: T) -> Int? {
        for (index,element) in array.enumerated() {
            if element == searchingItem {
                return index
            }
        }
        return nil
    }
    
    /// Sentinel linear search. Return first position if item founded else nil.
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    /// - Returns: Position if exist else nil.
    public func SentinelLinearSearch<T: Equatable>(array:[T],searchingItem: T) -> Int? {
        if array.count > 0 {
            var _array = array,
            counter: Int = 0
            
            _array.append(searchingItem)
            
            while _array[counter] != searchingItem{
                counter+=1
            }
            return counter+1 == _array.count ? nil : counter
        }else{
            return nil
        }
    }
    
    /// Recursive linear Search in array. Return first position if item founded else nil.
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    ///   - index: Start position in array for search.
    /// - Returns:Position if exist else nil.
    public func RecursiveLinearSearch<T: Equatable>(array: Array<T>, searchingItem: T, index: Int) -> Int? {
        if index > array.count {
            return nil
        } else {
            if array[index] == searchingItem {
                return index
            } else {
                return RecursiveLinearSearch(array: array, searchingItem: searchingItem, index: index+1)
            }
        }
    }
    
    /// Recursive linear search with memory clean. Return first position if item founded else nil. Your array will clean.
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    ///   - iteration: How many time was call this function (need for return position of item).
    /// - Returns:Position if exist else nil.
    public func MineRecursiveLinearSearch<T: Equatable>(array: inout Array<T>, searchingItem: T, iteration: Int = 0) -> Int? {
        if array.count == 0 {
            return nil
        } else {
            if array[0] == searchingItem {
                array.removeAll()
                return iteration
            } else {
                array = Array(array.dropFirst())
                return MineRecursiveLinearSearch(array: &array, searchingItem: searchingItem, iteration: iteration+1) 
            }
        }
    }
    
    /// Binary search for sorted int arrays. Return position if item exist else nil
    /// - Parameters:
    ///   - array: sorted array for searching
    ///   - searchingItem: item, that need to find
    /// - Returns: Position if item exist else nil.
    func BinarySearch(array: [Int], searchingItem: Int) -> Int? {
        var leftBorder:Int = 0,
        rightBorder:Int = array.count - 1,
        mid: Int
        
        while leftBorder <= rightBorder {
            mid = (rightBorder+leftBorder) / 2
            
            if array[mid] == searchingItem {
                return mid
            } else if array[mid] > searchingItem {
                rightBorder = mid - 1
            } else {
                leftBorder = mid + 1
            }
        }
        return nil
    }
}
