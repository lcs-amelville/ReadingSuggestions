//
//  ReadingSuggestionsApp.swift
//  Shared
//
//  Created on 2021-01-28.
//

import SwiftUI

@main
struct ReadingSuggestionsApp: App {
    
//    @StateObject private var store = BookStore()
    @StateObject private var store = testStore
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
                        PreviewView(thisPreview: testPreview.chapters.first!)
                    }
                    .tabItem {
                        Image(systemName: "heart.circle.fill")
                        Text("Books Preview")
                        
                    }
                    
                    NavigationView {
                        addBook(addStore: store)
                    }
                    .tabItem {
                        Image(systemName: "doc.fill.badge.plus")
                        Text("Add A Book")
                    }
                    
                    
            }
        }
    }
}
