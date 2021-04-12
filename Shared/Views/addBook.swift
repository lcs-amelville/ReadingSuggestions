//
//  addBook.swift
//  ReadingSuggestions
//
//  Created on 2021-03-10.
//

import SwiftUI

struct addBook: View {
    
    @ObservedObject var addStore: BookStore
    
    
    @State private var title = ""
    @State private var rating = RatingPicker.zero
    @State private var description = ""
    @State private var imageName = ""
        
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    
                    Text("Book Title")
                    TextField("Title", text: $title)
                    
                    Spacer()
                    
                    Text("Book Descripition")
                    TextField("Description", text: $description)
                    
                    Spacer()
                    
                    Picker("Rating", selection: $rating) {
                        Text(RatingPicker.zero.rawValue)
                            .tag(RatingPicker.zero)
                        Text(RatingPicker.one.rawValue)
                            .tag(RatingPicker.one)
                        Text(RatingPicker.two.rawValue)
                            .tag(RatingPicker.two)
                        Text(RatingPicker.three.rawValue)
                            .tag(RatingPicker.three)
                        Text(RatingPicker.four.rawValue)
                            .tag(RatingPicker.four)
                        Text(RatingPicker.five.rawValue)
                            .tag(RatingPicker.five)
                    }
          
                    
                }
            }
            .navigationTitle("Add A Book")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                }
            }
        }
    }
    func saveTask() {
        
        addStore.books.append(Book(title: title,
                                   rating: rating,
                                   description: description, imageName: imageName))
    }
}



struct addBook_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            addBook(addStore: testStore)
        }

    }
}
