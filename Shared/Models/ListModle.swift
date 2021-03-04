//
//  ListModle.swift
//  ReadingSuggestions
//
//  Created by Melville, Aidan on 2021-03-04.
//

import Foundation

class List: Identifiable, ObservableObject {
    
    
    var id = UUID()
    var description: String
    var image: String
    
    
    internal init(id: UUID = UUID(), description: String, image: String) {
        self.id = id
        self.description = description
        self.image = image
    }
}
    


let listData = [
    List(description: "A Court of Thorns and Roses", image: "aCourtOfThornsAndRoses" ),
    List(description: "All The Light You Cannot See", image: "allTheLIghtWeCannotSee"),
    List(description: "The Hate U Give", image: "theHateYouGive"),
    List(description: "Educated", image: "educated")
   // List(description: "", image: "")
]
