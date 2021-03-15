//
//  Preview.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-05.
//

import SwiftUI

struct PreviewView: View {
    
    
    @ObservedObject var thisPreview: Chapter
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                Text(thisPreview.preview)
                // The change made a lot of errors. Probally because I played around with the code to make it work after your changes. Lets see if it still works.
            }
        }
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {

            PreviewView(thisPreview: testPreview)
        }
    }
}
