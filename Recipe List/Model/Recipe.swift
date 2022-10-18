//
//  Recipe.swift
//  Recipe List
//
//  Created by Sambarta Ray Barman on 18/10/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var highlights: [String]
    var ingredients: [Ingredients]
    var directions: [String]
}

class Ingredients: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
