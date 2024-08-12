//
//  RecipeIngredientsView.swift
//  MyApp
//
//  Created by fate on 2024/8/12.
//

import SwiftUI

struct RecipeIngredientsView: View {
    
    let recipe: Recipe
    
    var body: some View {
        
        VStack {
            Text("INGREDIENTS")
                .underline()
                .padding(.bottom)
            Text(recipe.ingredients)
                .font(.caption)
                .lineSpacing(10)
        }
        .padding()
        .background(Color.secondary.colorInvert())
    }
}


struct RecipeDirectionView: View {
    
    let recipe: Recipe
    var body: some View {
        VStack(alignment: .leading) {
            Text("Directions")
                .font(.title3)
                .padding(.bottom)
            Text(recipe.directions)
        }
    }
}

struct RecipeNotSelectedView: View {
    
    var body: some View {
        Text("Select a recipe.")
    }
}
