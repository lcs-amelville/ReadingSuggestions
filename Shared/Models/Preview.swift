//
//  Preview.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-09.
//

import Foundation


class Preview: ObservableObject {
    @Published var chapters: [Chapter]
    
    init (chapters: [Chapter] = []) {
        self.chapters = chapters
        
    }
}

let testPreview = Preview(chapters: testChapter)
