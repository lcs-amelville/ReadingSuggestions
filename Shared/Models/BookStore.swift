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
           // self.books.append(contentsOf: books)
            
            return
            
        } else {
            
            // If nothing could be loaded from the app bundle, or data could not be decoded, show whatever reminders were passed in to the initializer
            self.books = books
            
        }
    }
    
    
    
    //FUNCTIONS.
    
    func filterRating (with selectedRating: String) -> [Book] {
        
        if selectedRating == noSpecifiedRating {
            
            
            return books
            
        } else {
            
            // Create an empty list of books that match the search term
            var matchingBooks: [Book] = []
            
            // Translate the given priority level (as a string) back into an enumeration value
            var givenRating = RatingPicker.zero.rawValue
            switch selectedRating {
            case RatingPicker.zero.rawValue:
                givenRating = RatingPicker.zero.rawValue
            case RatingPicker.one.rawValue:
                givenRating = RatingPicker.one.rawValue
            case RatingPicker.two.rawValue:
                givenRating = RatingPicker.two.rawValue
            case RatingPicker.three.rawValue:
                givenRating = RatingPicker.three.rawValue
            case RatingPicker.four.rawValue:
                givenRating = RatingPicker.four.rawValue
            case RatingPicker.five.rawValue:
                givenRating = RatingPicker.five.rawValue
            default:
                break
            }
            // Iterate through all the tasks
            for book in books {
                
                // ... but when a priority level is specified...
                if book.rating.rawValue == givenRating {
                    
                    // ... only add tasks that match that priority level to the list that is returned
                    matchingBooks.append(book)
                    
                }
            }
            // Return the list of matching tasks
            return matchingBooks
        }
    }
}

let testStore = BookStore(books: testData)


