//
//  BookView.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI


struct BookView: View {
    
    @ObservedObject var store: BookStore
    
    var body: some View {
    
        
        List (store.books) { book in
            BookDetail(book: book)
            
//            ForEach (store.books) { book in
//        BookCell(book: book)
            
        }
        .navigationTitle("Books")
    }
    
}


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookView(store: testStore)
        }
    }
    
}






