//
//  ReadingSuggestionsApp.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI

@main
struct ReadingSuggestionsApp: App {
    
    @StateObject private var store = BookStore()
    @StateObject private var chapter = PreviewStore()
    
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
                        PreviewList(store: chapter)
                    }
                    .tabItem {
                        Image(systemName: "heart.circle.fill")
                        Text("Books Preview")
                        
                    }
                    
                    NavigationView {
                        
                    }
                    .tabItem {
                    
                    }
                    
                    
                }
        }
    }
}
