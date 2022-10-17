//
//  RecipeModel.swift
//  Recipe List
//
//  Created by Sambarta Ray Barman on 18/10/22.
//

import Foundation
class RecipeModel: ObservableObject {
    
    @Published var recipes =  [Recipe]()
    
    init() {
        let service = DataServices()
        self.recipes = service.getLocalData()
    }
    
}
