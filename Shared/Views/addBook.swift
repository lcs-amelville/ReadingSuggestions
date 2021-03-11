//
//  addBook.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-10.
//

import SwiftUI

struct addBook: View {
    
    @ObservedObject var addStore: BookStore
    
    
    @State private var title = ""
    @State private var rating = RatingPicker.zero
    @State private var description = ""
        
        
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    TextField("Title", text: $title)
                    
                    Spacer()
                    
                    Picker("Rating", selection: $rating) {
                        Text(RatingPicker.zero)
                            .tag(RatingPicker.zero)
                        Text(RatingPicker.one)
                            .tag(RatingPicker.one)
                        
                    }
                    
                    Spacer()
                    
                    TextField("Description", text: $description)
                    
                    
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
}
func saveTask() {
    
}


struct addBook_Previews: PreviewProvider {
    static var previews: some View {
        addBook(addStore: testStore)
    }
}
