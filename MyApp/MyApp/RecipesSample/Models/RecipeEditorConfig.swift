//
//  RecipeEditorConfig.swift
//  MyApp
//
//  Created by fate on 2024/8/9.
//

import Foundation


struct RecipeEditorConfig {
    
    var recipe = Recipe.emptyRcipe()
    var shouldSaveChanges = false
    var isPresented = false
    
    mutating func presentAddRecipe(sidebarItem: SidebarItem) -> Void {
        
        recipe = Recipe.emptyRcipe()
        
        switch sidebarItem {
        case .favorites:
            recipe.isFavorite = true
        case .collection(let name):
            recipe.collections = [name]
        default:
            break
        }
        
        shouldSaveChanges = false
        isPresented = true
    }
    
    mutating func presentEditRecipe(_ recipeToEdit: Recipe) {
        recipe = recipeToEdit
        shouldSaveChanges = false
        isPresented = true
    }
    
    mutating func done() {
        shouldSaveChanges = true
        isPresented = false
    }
    
    mutating func cancel() -> Void {
        shouldSaveChanges = false
        isPresented = false
    }
    
}
