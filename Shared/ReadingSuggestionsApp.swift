//
//  ReadingSuggestionsApp.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI

@main
struct ReadingSuggestionsApp: App {
    
    @StateObject var store = BookStore()
    
    var body: some Scene {
        WindowGroup {
                
                TabView {
                    
                    NavigationView {
                        BookView(store: store)
                    }
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Books")
                        
                    }
                    
                    NavigationView {
                        Text("Helo World")
                    }
                    .tabItem {
                        Image(systemName: "heart.circle.fill")
                        Text("Favorite Books")
                        
                    }
            
                }
        }
    }
}
