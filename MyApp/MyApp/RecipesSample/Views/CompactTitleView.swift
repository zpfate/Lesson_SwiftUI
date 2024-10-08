//
//  CompactTitleView.swift
//  MyApp
//
//  Created by fate on 2024/8/12.
//

import SwiftUI

struct CompactTitleView: View {
    
    @Binding var recipe: Recipe
    
    var body: some View {
        
        Spacer()
        VStack {
            Text(recipe.title)
                .font(.title2)
            StarRating(rating: $recipe.rating)
            Text(recipe.subtitle)
                .font(.subheadline)
        }
        Spacer()
    }
}

