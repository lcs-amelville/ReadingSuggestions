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
    let id: Int
    let imageName: String
}

let testData = [
    Book (title: "Test",rating: 0,description: "", id: 1, imageName: "Test"),
    Book (title: "",rating: 0,description: "", id: 2, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 3, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 4, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 5, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 6, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 7, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 8, imageName: ""),
    Book (title: "",rating: 0,description: "", id: 9, imageName: ""),
]



