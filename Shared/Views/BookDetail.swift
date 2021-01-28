//
//  BookDetail.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI

struct BookDetail: View {
    
    var book: Book
    
    var body: some View {
        VStack {
            
            Image(book.imageName)
            
        }
        .navigationTitle(book.title)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookDetail(book: testData[1])
        }
    }
}
