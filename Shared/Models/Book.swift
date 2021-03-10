//
//  Book.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import Foundation

class Book: Identifiable, ObservableObject {

    var id = UUID()
    var title: String
    var rating: RatingPicker
    var description: String
    var imageName: String
    
    
    internal init(id: UUID = UUID(), title: String, rating: RatingPicker, description: String, imageName: String) {
        self.id = id
        self.title = title
        self.rating = rating
        self.description = description
        self.imageName = imageName
    }
    
}

let testData = [
    
    Book (title: "A Court of Thorns and Roses",
          rating: .five,
          description: "A fast pace romance and action book, incorperating strong characters and challenging emotional choices.",
          imageName: "aCourtOfThornsAndRoses"),
    
    Book (title: "All The Light You Cannot See",
          rating: .four,
          description: "A realistic fiction evolving around a blind girl and her life and german ocuppied territory durring World War 2.",
          imageName: "allTheLIghtWeCannotSee"),
    
    Book (title: "The Hate U Give",
          rating: .four,
          description: "The Hate U Give revolves around the world of a black teenager whos friend was shot infront of her because of his colour. The wild fire of her life after this horrifying event tests her courage and conviction for justice and her very safety.",
          imageName: "theHateYouGive"),
    
    Book (title: "Educated",
          rating: .three,
          description: "This book, while a good read is very depressing with heavy topics. While an exellent read for a fun books list it is definitly not in the top section of that list.",
          imageName: "educated"),
    
    Book (title: "",rating: .zero,description: "", imageName: ""),
    Book (title: "",rating: .zero,description: "", imageName: ""),
    Book (title: "",rating: .zero,description: "", imageName: ""),
    Book (title: "",rating: .zero,description: "", imageName: ""),
]




