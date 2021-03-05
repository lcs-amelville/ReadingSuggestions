//
//  Preview.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-05.
//

import SwiftUI

struct Preview: View {
    
    @ObservedObject var chapter: Book
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Preview(chapter: testPreview)
        }
    }
}
