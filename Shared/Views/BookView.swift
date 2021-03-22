//
//  BookView.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI


struct BookView: View {
    
    @ObservedObject var store: BookStore
    
    @State private var rating = RatingPicker.zero
    
    @State private var selectedRatingLevel = noSpecifiedRating
    
    var body: some View {
        
        VStack {
            
            Text("Book Rating")
            
            Picker("Rating", selection: $rating) {
                Text(selectedRatingLevel)
                    .tag(selectedRatingLevel)
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
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
        
            
            
        List(store.books) { book in
                    BookCell(book: book)
        }
        
        .navigationTitle("Books")
    }
    
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
                        .frame(width: 80.0, height: 80.0)
                
                    Text(book.title)
                   .font(.headline)
            }
        }

    }
}

