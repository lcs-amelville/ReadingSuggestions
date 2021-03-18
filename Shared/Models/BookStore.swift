//
//  BookStore.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import Foundation



class BookStore: ObservableObject {
    
    @Published var books: [Book] {
        
        didSet {
            
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(books) {
                
                // DEBUG
                print("Saving tasks list now...")
                
                // Actually save the task
                UserDefaults.standard.setValue(encoded, forKey: "books")
                
            }
        }
    }
    
    init (books: [Book] = []) {
        
        // Try to read the existing tasks from the app bundle
        if let readBooks = UserDefaults.standard.data(forKey: "books") {
            
            let decoder = JSONDecoder()
            // Try to decode the items from JSON
            // Decodes an instance of the specified type
            // .self is required to reference the type objecct
            // So by saying [k].self we are saying "decode the data from readItems into a structure of type [Task]"
            if let decoded = try? decoder.decode([Book].self, from: readBooks) {
                self.books = decoded
            } else {
                self.books = []
            }
            
            // Debug: Appending the contents of the test data for testing.
            self.books.append(contentsOf: books)
            
            return
            
        } else {
            
            // If nothing could be loaded from the app bundle, or data could not be decoded, show whatever reminders were passed in to the initializer
            self.books = books
            
        }
    }
    
    
    
    //FUNCTIONS.
    
    //    func filterRating (with RatingPicker: String) -> [Book] {
    //
    //        if RatingPicker == noSpecifiedRating {
    //
    //
    //            return books
    //
    //        } else {
    //
    //            var givenRating = RatingPicker.zero
    //
    //
    //            switch RatingPicker  {
    //            case RatingPicker.zero.rawValue:
    //                givenRating = RatingPicker.zero.rawValue
    //            case RatingPicker.one:
    //
    //                }
    //            }
    //        }
}


let testStore = BookStore(books: testData)


