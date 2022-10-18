//
//  RecipeTab.swift
//  Recipe List
//
//  Created by Sambarta Ray Barman on 18/10/22.
//

import SwiftUI

struct RecipeTab: View {
    var body: some View {
        TabView {
            Text("Featured Items").tabItem({
                VStack{
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            })
            
            ContentView().tabItem({
                VStack{
                    Image(systemName: "list.bullet")
                    Text("All Recipes")
                }
            })
        }
    }
}

struct RecipeTab_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTab()
    }
}
