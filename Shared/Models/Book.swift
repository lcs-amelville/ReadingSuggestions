//
//  Book.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import Foundation

struct Book:  Decodable, Identifiable {

    let title: String
    let rating: Int
    let description: String
    let id = UUID()
    let imageName: String
}

let testData = [
    Book (title: "Test",
          rating: 0,
          description: "This is an intresting book with a fast pace exciting plot line. It's full of plot twists but unfortunaly ends with a dreadful cliff hanger.",
          imageName: "Test"),
    
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
    Book (title: "",rating: 0,description: "", imageName: ""),
]



