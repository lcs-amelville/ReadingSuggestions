//
//  BookView.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI


struct BookView: View {
    
    @ObservedObject var book: BookStore
    
    var body: some View {
        
        List(book.books) { book in
            
            // create a navigation link leading to the detail view
            NavigationLink(destination: BookDetail(book: book)) {
       
                
                Image(book.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44, height: 44)
                
                Text(book.title)
                    font(.headline)
                
                
            }
            
        }
        .navigationTitle("Books")
   }
        
}


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        BookView(book: testStore)
        }
    }
}

