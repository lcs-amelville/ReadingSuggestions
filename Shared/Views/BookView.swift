//
//  BookView.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI


struct BookView: View {
    
    @ObservedObject var store: BookStore
    
    var body: some View {
        
        List (store.lists) { list in
            BookCell(list: list)
            
        }
        .navigationTitle("Books")
    }
    
}


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookView(store: testStore)
        }
    }
    
}






