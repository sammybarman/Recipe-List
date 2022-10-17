//
//  DataServices.swift
//  Recipe List
//
//  Created by Sambarta Ray Barman on 18/10/22.
//

import Foundation

class DataServices {
    
    func getLocalData() -> [Recipe] {
        
        let pathstring = Bundle.main.path(forResource: "data", ofType:"json")
        
        guard pathstring != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathstring!)
        
        
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                var RecipeData = try decoder.decode([Recipe].self, from: data)
                for r in RecipeData{
                    r.id = UUID()
                }
                return RecipeData
            }
            catch{
                print(error)
            }
            
        }
        
        catch{
            print(error)
        }
    return [Recipe]()
    }
}
