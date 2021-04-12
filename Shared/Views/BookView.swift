//
//  BookView.swift
//  ReadingSuggestions
//
//  Created on 2021-01-28.
//

import SwiftUI


struct BookView: View {
    
    @ObservedObject var store: BookStore
    
    @State private var rating = RatingPicker.zero
    
    @State private var selectedRatingLevel = noSpecifiedRating
    
    var body: some View {
        
        VStack {
            
            Text("Book Rating")
            
            Picker("Rating", selection: $selectedRatingLevel) {
                Text(noSpecifiedRating)
                    .tag(noSpecifiedRating)
                Text(RatingPicker.zero.rawValue)
                    .tag(RatingPicker.zero.rawValue)
                Text(RatingPicker.one.rawValue)
                    .tag(RatingPicker.one.rawValue)
                Text(RatingPicker.two.rawValue)
                    .tag(RatingPicker.two.rawValue)
                Text(RatingPicker.three.rawValue)
                    .tag(RatingPicker.three.rawValue)
                Text(RatingPicker.four.rawValue)
                    .tag(RatingPicker.four.rawValue)
                Text(RatingPicker.five.rawValue)
                    .tag(RatingPicker.five.rawValue)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
        
            
            
            
        List(store.filterRating(with: selectedRatingLevel)) { book in
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

