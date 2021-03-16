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
    
    //FUNCTIONS.

    func filterRating (with RatingPicker: String) -> [Book] {
        
        if RatingPicker == noSpecifiedRating {
            
            
            return books
            
        } else {
        
            var givenRating = RatingPicker.zero
            
            switch RatingPicker  {
            case RatingPicker.zero.rawValue:
                givenRating = RatingPicker.zero,
            case:
                
                }
            }
        }
    }


let testStore = BookStore(books: testData)


