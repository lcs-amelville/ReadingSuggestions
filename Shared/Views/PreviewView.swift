//
//  Preview.swift
//  ReadingSuggestions
//
//  Created on 2021-03-05.
//

import SwiftUI

struct PreviewView: View {
    
    
    @ObservedObject var thisPreview: Chapter
  
    var body: some View {
        
        ScrollView {
            VStack {
                
                Text(thisPreview.preview)
                
            }
        }
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {

            PreviewView(thisPreview: testPreview.chapters.first!)
        }
    }
}
