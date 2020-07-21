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
    public func LinearSearch<T: Equatable>(array: Array<T>, searchingItem: T) -> Int? {
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
    public func BetterLinearSearch<T: Equatable>(array: Array<T>, searchingItem: T) -> Int? {
        for (index,element) in array.enumerated() {
            if element == searchingItem {
                return index
            }
        }
        return nil
    }
    
    /// Sentinel linear search. Return first position if item founded else nil. (My version of sentinel search)
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    /// - Returns: Position if exist else nil.
    public func SentinelLinearSearch<T: Equatable>(array: Array<T>, searchingItem: T) -> Int? {
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
    public func RecursiveLinearSearch<T: Equatable>(array: Array<T>, searchingItem: T,startPosition index: Int) -> Int? {
        if index > array.count - 1 {
            return nil
        } else {
            if array[index] == searchingItem {
                return index
            } else {
                return RecursiveLinearSearch(array: array, searchingItem: searchingItem, startPosition: index+1)
            }
        }
    }
    
    /// Recursive linear search with memory clean. Return first position if item founded else nil. Your array will empty.
    /// - Parameters:
    ///   - array: Array for searching item.
    ///   - searchingItem: Item, that need to find.
    ///   - iteration: How many time was call this function (need for return position of item).
    /// - Returns:Position if exist else nil.
    public func MineRecursiveLinearSearch<T: Equatable>(array: inout Array<T>, searchingItem: T,_ iteration: Int = 0) -> Int? {
        if array.count == 0 {
            return nil
        } else {
            if array[0] == searchingItem {
                array.removeAll()
                return iteration
            } else {
                array = Array(array.dropFirst())
                return MineRecursiveLinearSearch(array: &array, searchingItem: searchingItem, iteration+1)
            }
        }
    }
    
    /// Binary search for sorted int arrays. Return position if item exist else nil.
    /// - Parameters:
    ///   - array: Sorted array for searching.
    ///   - searchingItem: Item, that need to find.
    /// - Returns: Position if item exist else nil.
    public func BinarySearch(array: Array<Int>, searchingItem: Int) -> Int? {
        var leftBorder:Int = 0,
        rightBorder:Int = array.count - 1,
        mid: Int
        
        while leftBorder <= rightBorder {
            mid = (rightBorder+leftBorder) / 2
            
            if array[mid] == searchingItem {
                return mid
            } else {
                array[mid] > searchingItem ? { return rightBorder = mid - 1 }() : { return leftBorder = mid + 1 }()
            }
        }
        return nil
    }
    
    /// Recursive binary search. Return position if item founded else nil.
    /// - Parameters:
    ///   - array: Sorted array for searching.
    ///   - searchingItem: Item, that need to find.
    ///   - leftBorder: Left border for search in array ( for correct search - default 0 ).
    ///   - rightBorder: Right border for search in array ( for correct search - array.count - 1).
    /// - Returns: Position if item exist else nil.
    public func RecursiveBinarySearch( array: Array<Int>, searchingItem: Int, from leftBorder: Int = 0, to rightBorder: Int) -> Int? {
        if leftBorder > rightBorder {
            return nil
        } else {
            let mid = (leftBorder + rightBorder) / 2
            if array[mid] == searchingItem {
                return mid
            } else {
                return array[mid] > searchingItem ? RecursiveBinarySearch(array: array, searchingItem: searchingItem, from: leftBorder, to: mid - 1) : RecursiveBinarySearch(array: array, searchingItem: searchingItem, from: mid + 1, to: rightBorder)
            }
        }
    }
    
    /// Recursive binary search with memory clean. Return index if item founded else nil. Your array will empty.
    /// - Parameters:
    ///   - array: Sorted array for searching.
    ///   - searchingItem: Item, that need to find.
    ///   - leftBorder: Left border for search in array ( for correct search - default 0 ).
    ///   - rightBorder: Right border for search in array ( for correct search - array.count - 1).
    ///   - droppedItems: Count of dropped items. Need for determine position of item.
    /// - Returns: Position if item exist else nil.
    public func MineRecursiveBinarySearch(array: inout Array<Int>, searchingItem: Int, from leftBorder: Int = 0, to rightBorder: Int, droppedItems: Int = 0) -> Int? {
        if rightBorder == 0 {
            return array.popLast() == searchingItem ? droppedItems : nil
        } else {
            let mid = (leftBorder + rightBorder) / 2
            var droppedItemsCopy = droppedItems
            if array[mid] == searchingItem {
                array.removeAll()
                return droppedItems == 0 ? mid : droppedItems + mid
            } else {
                if array[mid] > searchingItem {
                    array = Array(array[leftBorder...mid-1])
                } else {
                    droppedItemsCopy += array.count
                    array = Array(array[mid+1...rightBorder])
                    droppedItemsCopy -= array.count
                }
                return MineRecursiveBinarySearch(array: &array, searchingItem: searchingItem, to: array.count-1, droppedItems: droppedItemsCopy)
            }
        }
    }
}
