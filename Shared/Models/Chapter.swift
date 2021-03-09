//
//  Chapter.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-09.
//

import Foundation

class Chapter: Identifiable, ObservableObject {
    var id = UUID()
    var preview: String
    
    internal init(id: UUID = UUID(), preview: String) {
        self.id = id
        self.preview = preview
    }

}



let testChapter = [
    Chapter (preview: ""),
    Chapter (preview: ""),
]

