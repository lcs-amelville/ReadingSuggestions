//
//  ContentView.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-28.
//

import SwiftUI

struct BookCell: View {
    
    
    var list: List
    var body: some View {
    
                    Image(list.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    Text(list.description)
                    font(.headline)

                }
            }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookCell(list: listData[0])
        }
    }

