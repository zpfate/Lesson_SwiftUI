//
//  DemoScene.swift
//  MyApp
//
//  Created by fate on 2024/8/2.
//
import SwiftUI

struct DemoScene: Scene {
    var body: some Scene {
        
        WindowGroup {
            RootView()
        }
    }
}


struct RootView: View {
    
//    @Binding var choice: S
    
    var body: some View {
        
        Text("Hamlet").font(.largeTitle)
        Text("by William Shakespeare").font(.caption).italic()
        
        HStack {
            Image(systemName: "folder.badge.plus")
            Image(systemName: "heart.circle.fill")
            Image(systemName: "alarm")

        }
        .symbolRenderingMode(.multicolor)
        .font(.largeTitle)
        
        Label("Favorite Books", systemImage: "books.vertical")
            .labelStyle(.titleAndIcon)
            .font(.largeTitle)
        
        Image("Yellow_Daisy")
            .resizable()
            .scaledToFit()
        
        HStack {
            Rectangle()
                .foregroundColor(.blue)
            Circle()
                .foregroundColor(.orange)
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .foregroundColor(.green)
        }
        .aspectRatio(3.0, contentMode: .fit)
        
//        VStack {
//            HStack {
//                Picker("Choice", selection: fa)
//            }
//        }
        
    }
}

#Preview {
    RootView()
}
