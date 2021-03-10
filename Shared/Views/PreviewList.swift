//
//  PreviewList.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-10.
//

import SwiftUI

struct PreviewList: View {
    
    @ObservedObject var store: PreviewStore
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PreviewList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        PreviewList(store: testPreview)
        }
    }
}
