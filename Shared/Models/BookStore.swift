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

class PreviewStore: ObservableObject {
    @Published var chapters: [Book]
    
    init (chapters: [Book] = []) {
        self.chapters = chapters
        
    }
}


let testPreview = BookStore(books: testChapter)
