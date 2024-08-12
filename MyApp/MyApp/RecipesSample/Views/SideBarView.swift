//
//  SideBarView.swift
//  MyApp
//
//  Created by fate on 2024/8/9.
//

import SwiftUI

enum SidebarItem: Hashable {
        
    case all, favorites, recents
    case collection(String)
    
    var title: String {
        switch self {
        case .all:
            return "All Recipes"
        case . favorites:
            return "Favorites"
        case .recents:
            return "Recents"
        case .collection(let name):
            return name
        }
    }
}


struct SideBarView: View {
    
    @Binding var selection: SidebarItem?
    @ObservedObject var recipeBox: RecipeBox
    
    var body: some View {
  
        List(selection: $selection) {
            
            Section("Library") {
                NavigationLink(value: SidebarItem.all) {
                    Text(SidebarItem.all.title)
                }
                NavigationLink(value: SidebarItem.favorites) {
                    Text(SidebarItem.favorites.title)
                }
                NavigationLink(value: SidebarItem.recents) {
                    Text(SidebarItem.recents.title)
                }
            }
            
            Section("Collections") {
                ForEach(recipeBox.collections, id: \.self) { collectionName in
                    Text(collectionName)
                }
            }
        }
        
    }
}


//#Preview {
//    SideBarView()
//}
