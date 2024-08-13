//
//  RecipeScene.swift
//  MyApp
//
//  Created by fate on 2024/8/12.
//

import SwiftUI

struct RecipeScene: Scene {
    
    @StateObject private var recipeBox = RecipeBox(recipes: load("recipeData.json"))
    @State private var selectedSidebarItem: SidebarItem? = SidebarItem.all
    @State private var selectedRecipeId: Recipe.ID?
    
    var body: some Scene {
        
        WindowGroup {
            
//            NavigationSplitView {
//                ContentListView(seletion: $selectedRecipeId, selectedSidebarItem: selectedSidebarItem ?? SidebarItem.all)
//            } detail: {
//                RecipeDetailView()
//            }.environmentObject(recipeBox)

            NavigationSplitView {
                SideBarView(selection: $selectedSidebarItem, recipeBox: recipeBox)
            } content: {
                ContentListView(selection: $selectedRecipeId, selectedSidebarItem: selectedSidebarItem ?? SidebarItem.all)
            } detail: {
                DetailView(recipeId: $selectedRecipeId)
            }
            .environmentObject(recipeBox)
        }
    }
}

