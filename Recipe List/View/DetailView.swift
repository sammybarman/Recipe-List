//
//  DetailView.swift
//  Recipe List
//
//  Created by Sambarta Ray Barman on 18/10/22.
//

import SwiftUI

struct DetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
            Image(recipe.image).resizable().scaledToFit()
            VStack(alignment: .leading){
                Text("Ingredients")
                    .font(.headline)
                    .padding([.bottom, .top], 5.0)
                ForEach(recipe.ingredients, id: \.self) {
                    r in
                    Text(" - " + r)
                        .padding(.bottom, 5.0)
                }
                
                Divider()
                
                Text("Directions").font(.headline).padding(.bottom, 5.0)
                
                ForEach(0..<recipe.directions.count, id: \.self){
                    d in
                    Text(String(d+1) + ") " +  recipe.directions[d]).padding(.bottom, 5.0)
                }
            }
        }.navigationBarTitle(Text(recipe.name))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        DetailView(recipe: model.recipes[0])
    }
}
