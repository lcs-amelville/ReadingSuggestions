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
        
        List(store.books) { book in
                    BookCell(book: book)
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



struct BookCell: View {
    
    
    var book: Book
    var body: some View {
        
        NavigationLink(destination: BookDetail(book: book)) {
            
            HStack {
                    Image(book.imageName)
                    .resizable()
                    .scaledToFit()
                    
                    Text(book.title)
                   .font(.headline)
            }
        }

    }
}

