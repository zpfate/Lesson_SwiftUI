//
//  RecipeDetailToolbar.swift
//  MyApp
//
//  Created by fate on 2024/8/12.
//

import SwiftUI

struct RecipeDetailToolbar: ToolbarContent {
    
    @Binding var recipe: Recipe
    @Binding var showDeleteConfirmation: Bool
    let deleteRecipe: () -> Void
    
    private var toolbarItemPlacement: ToolbarItemPlacement {
        #if os(macOS)
        .automatic
        #else
        .navigationBarTrailing
        #endif
    }
    
    var body: some ToolbarContent {
        
        ToolbarItem(placement: toolbarItemPlacement) {
            Toggle(isOn: $recipe.isFavorite) {
                Image(systemName: "heart")
                    .symbolVariant(recipe.isFavorite ? .fill : .none)
            }
            .toggleStyle(.button)
        }
        
        ToolbarItem(placement: toolbarItemPlacement) {
            Button(role: .destructive) {
                showDeleteConfirmation = true
            } label: {
                Image(systemName: "trash")
            }
            .alert("Delete Recipe?", isPresented: $showDeleteConfirmation) {
                Button(role: .destructive) {
                    withAnimation {
                        deleteRecipe()
                    }
                } label: {
                    Text("Delete \(recipe.title)")
                }
            }
        }
    }
}

