//
//  ContentView.swift
//  Recipe List
//
//  Created by Sambarta Ray Barman on 17/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    var body: some View {
        
        NavigationView{
            
            List(model.recipes){ r in
                
                NavigationLink(destination: DetailView(recipe: r), label: {
                    HStack(spacing: 20.0){
                        Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: .leading).clipped().cornerRadius(5)
                        Text(r.name)
                    }
                })
            }.navigationTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
