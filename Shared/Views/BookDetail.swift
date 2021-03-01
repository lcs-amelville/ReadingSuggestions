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
        ScrollView {
            Image(book.imageName)
                .resizable()
                .scaledToFit()
                .padding(.bottom)
         
            
        VStack {
            
       
            
            Text(" This book has a \(book.rating) out of 5 rating")
                .multilineTextAlignment(.leading)
                .font(.title)
                .padding(.bottom)
            
            Text(book.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            
            }
        .navigationTitle(book.title)
        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookDetail(book: testData[0])
        }
    }
}
