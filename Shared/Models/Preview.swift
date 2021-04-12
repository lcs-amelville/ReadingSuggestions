//
//  Preview.swift
//  ReadingSuggestions
//
//  Created on 2021-03-09.
//

import Foundation

class PreviewStore: ObservableObject {
    @Published var chapters: [Chapter]
    
    init (chapters: [Chapter] = []) {
        self.chapters = chapters
        
    }
}

let testPreview = PreviewStore(chapters: testChapter)
