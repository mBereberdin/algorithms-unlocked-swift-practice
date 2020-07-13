//
//  Search.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 13.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

class Search{

    public func LinearSearch<T: Equatable>(array:[T],searchingItem: T) -> Int? { //Last index if exist index
        var answer: Int? = nil
        for (index,element) in array.enumerated() {
            if element == searchingItem {
                answer = index
            }
        }
        return answer
    }
    
    public func BetterLinearSearch<T: Equatable>(array:[T],searchingItem: T) -> Int? { //First if exist index
        for (index,element) in array.enumerated() {
            if element == searchingItem {
                return index
            }
        }
        return nil
    }
    
    public func SentinelLinearSearch<T: Equatable>(array:[T],searchingItem: T) -> Int? { //First if exist index
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
    
}
