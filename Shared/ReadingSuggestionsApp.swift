//
//  ReadingSuggestionsApp.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI

@main
struct ReadingSuggestionsApp: App {
    var body: some Scene {
        WindowGroup {
                
                TabView {
                    
                    NavigationView {
                        ContentView()
                    }
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Books")
                        
                    }
                    .tabItem {
                        Image(systemName: "")
                        Text("Favorite Books")
                        
                    }
            
                }
        }
    }
}
