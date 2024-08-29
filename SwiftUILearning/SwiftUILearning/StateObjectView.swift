//
//  StateObjectView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

// @StateObject用于在视图中创建一个持久化的可观察对象，并在视图的生命周期内保持持久性。它类似于@ObservedObject，但在对象生命周期中只会创建一次。

class DataModel: ObservableObject {
    
    @Published var data: [String] = []
    
    var count: Int = 0
}

struct StateObjectView: View {
    
    @StateObject var dataModel = DataModel()
    
    private func add() {
        dataModel.count += 1
    }
    
    var body: some View {
        
        VStack {
            Button(action: {
                add()
                dataModel.data.append("New Item \(dataModel.count)")
            }, label: {
                Text("Add Item")
            })
        }
        
        ForEach(dataModel.data, id: \.self) { item in
            Text(item)
        }
    }
}

#Preview {
    StateObjectView()
}
