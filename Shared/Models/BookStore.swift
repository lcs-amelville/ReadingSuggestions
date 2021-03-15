//
//  BookStore.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import Foundation

class BookStore: ObservableObject {
    @Published var books: [Book]
    
    init (books: [Book] = []) {
        self.books = books
        
    }
}

let testStore = BookStore(books: testData)

