//
//  Book.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import Foundation

struct Book: Decodable, Identifiable {

    let title: String
    let rating: Double
    let description: String
    let id: Int
    let imageName: String
}

let testData = [
    Book (title: "Test",
          rating: 4.0,
          description: "This is an intresting book with a fast pace exciting plot line. It's full of plot twists but unfortunaly ends with a dreadful cliff hanger.",
          id: 1,
          imageName: "Test"),
    
    Book (title: "A Court of Thorns and Roses",
          rating: 5.0,
          description: "A fast pace romance and action book, incorperating strong characters and challenging emotional choices.",
          id: 2,
          imageName: "aCourtOfThornsAndRoses"),
    
    Book (title: "All The Light You Cannot See",
          rating: 4.0,
          description: "A realistic fiction evolving around a blind girl and her life and german ocuppied territory durring World War 2.",
          id: 3,
          imageName: "allTheLIghtWeCannotSee"),
    
    Book (title: "The Hate U Give",
          rating: 4.5,
          description: "The Hate U Give revolves around the world of a black teenager whos friend was shot infront of her because of his colour. The wild fire of her life after this horrifying event tests her courage and conviction for justice and her very safety.",
          id: 4,
          imageName: "theHateYouGive"),
    
    Book (title: "Educated",
          rating: 3.5,
          description: "This book, while a good read is very depressing with heavy topics. While an exellent read for a fun books list it is definitly not in the top section of that list.",
          id: 5,
          imageName: "educated"),
    
    Book (title: "",rating: 0,description: "", id: 6, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 7, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 8, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 9, imageName: ""),
]



