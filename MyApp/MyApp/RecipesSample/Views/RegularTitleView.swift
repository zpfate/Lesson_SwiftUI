//
//  RegularTitleView.swift
//  MyApp
//
//  Created by fate on 2024/8/12.
//

import SwiftUI

struct RegularTitleView: View {
    
    @Binding var recipe: Recipe
    
    var body: some View {
        
        VStack {
            Text(recipe.title)
                .font(.largeTitle)
            StarRating(rating: $recipe.rating)
        }
        Spacer()
        Text(recipe.subtitle)
            .font(.subheadline)
    }
}


