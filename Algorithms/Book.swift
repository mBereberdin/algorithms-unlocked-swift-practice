//
//  Book.swift
//  Algorithms
//
//  Created by Михаил Беребердин on 17.07.2020.
//  Copyright © 2020 Михаил Беребердин. All rights reserved.
//

import Foundation

class Book {
    var author: String
    var title: String
    
    init(author: String, title: String) {
        self.author = author
        self.title = title
    }
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.author == rhs.author && lhs.title == rhs.title
    }
}
