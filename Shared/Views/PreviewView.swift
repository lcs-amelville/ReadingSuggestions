//
//  Preview.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-05.
//

import SwiftUI

struct PreviewView: View {
    
    @ObservedObject var chapter: Chapter
    
    var body: some View {
        
        ScrollView {
            VStack {
                //Text("Hello, World!")
                Text(chapter.preview)
            }
        }
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            
            PreviewView(chapter: testChapter[0])
        }
    }
}
