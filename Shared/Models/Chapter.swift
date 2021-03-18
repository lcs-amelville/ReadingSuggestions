//
//  Chapter.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-09.
//

import Foundation

class Chapter: Identifiable, ObservableObject, Decodable {
    var idi: Int
    var preview: String
    
    internal init(idi: Int, preview: String) {
        self.idi = idi
        self.preview = preview
    }

}



let testChapter = [
    Chapter (idi: 1, preview: "Chapter 1: The Beginning"),
    Chapter (idi: 2, preview: "Chapter 2: The Next Part"),
]

