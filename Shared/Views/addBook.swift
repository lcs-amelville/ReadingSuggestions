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
                    
//                    Picker("Raselection: ting", sellabelrating) {
//                        Text(RatingPicker.zero.rawValue).tag(RatingPicker.zero)
//                        Text(RatingPicker.one.rawValue).tag(RatingPicker.one)
//                        Text(RatingPicker.two.rawValue).tag(RatingPicker.two)
//                        Text(RatingPicker.three.rawValue).tag(RatingPicker.three)
//                        Text(RatingPicker.four.rawValue).tag(RatingPicker.four)
//                        Text(RatingPicker.five.rawValue).tag(RatingPicker.five)
//                    }
                    
                    Spacer()
                    
                    TextField("Description", text: $description)
                }
            }
        }
    }
}

struct addBook_Previews: PreviewProvider {
    static var previews: some View {
        addBook(addStore: testStore)
    }
}
