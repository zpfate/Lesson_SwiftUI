//
//  DetailView.swift
//  MyApp
//
//  Created by fate on 2024/8/12.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var recipeId: Recipe.ID?
    @EnvironmentObject private var recipeBox: RecipeBox
    @State private var showDeleteConfirmation = false
    
    private var recipe: Binding<Recipe> {
        Binding {
            if let id = recipeId {
                return recipeBox.recipe(with: id) ?? Recipe.emptyRcipe()
            } else {
                return Recipe.emptyRcipe()
            }
        } set: { updatedRecipe in
            recipeBox.update(updatedRecipe)
        }
    }
    
    private func deleteRecipe() {
        recipeBox.delete(recipe.id)
    }
    
    var body: some View {
        
        ZStack {
            if recipeBox.contains(recipeId)  {
                RecipeDetailView(recipe: recipe)
                    .navigationTitle(recipe.wrappedValue.title)
                #if os(iOS)
                    .navigationBarTitleDisplayMode(.inline)
                #endif
                    .toolbar {
                        RecipeDetailToolbar(
                            recipe: recipe,
                            showDeleteConfirmation: $showDeleteConfirmation,
                            deleteRecipe: deleteRecipe)
                    }
            } else {
                RecipeNotSelectedView()
            }
        }
    }
}
