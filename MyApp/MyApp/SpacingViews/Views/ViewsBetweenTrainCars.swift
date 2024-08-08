//
//  ViewsBetweenTrainCars.swift
//  MyApp
//
//  Created by fate on 2024/8/8.
//

import SwiftUI


struct AddingSpacer: View {
    
    var body: some View {
        Text("Spacer")
        HStack {
            TrainCar(.rear)
            Spacer()
            TrainCar(.middle)
            Spacer()
            TrainCar(.front)
        }
        TrainTrack()
    }
}


struct StackingPlaceholder: View {
    
    var body: some View {
        Text("Stacking with a Placeholder")
        HStack {
            TrainCar(.rear)
            ZStack {
                TrainCar(.middle)
                    .font(.largeTitle)
                    .opacity(0)
                    .border(.teal)
                TrainCar(.middle)
            }
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct AddingPlaceholder: View {
    
    var body: some View {
        Text("Spacing with a Placeholder")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .opacity(0)
            TrainCar(.middle)
            TrainCar(.middle)
                .opacity(0)
            TrainCar(.front)
        }
        TrainTrack()
    }
}


struct ViewsBetweenTrainCars: View {
    var body: some View {
        VStack(spacing: 4, content: {
            AddingSpacer()
            AddingPlaceholder()
            StackingPlaceholder()
        })
    }
}

#Preview {
    ViewsBetweenTrainCars()
}
