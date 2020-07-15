//
//  Algorithm.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 15.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

class Algorithm {
    
    /*
    Чтобы рекурсия работала, должны выполняться два свойства. Во-первых, должен су­ществовать один или несколько базовых случаев, когда вычисления проводятся непосред­ственно, без рекурсии. Во-вторых, каждый рекурсивный вызов процедуры должен быть меньшим экземпляром той же самой задачи, так что в конечном итоге будет достигнут один из базовых случаев.
     */
    func Factorial(_ number: Int) -> Int { //Recursion
        if number == 0 {
            return 1
        }else{
            return number * Factorial(number-1)
        }
    }
    
    
    
    
}

