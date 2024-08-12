//
//  PaddingTrainCars.swift
//  MyApp
//
//  Created by fate on 2024/8/7.
//

import SwiftUI

struct DefaultPadding: View {
    var body: some View {
        Text("Default Padding")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .padding()
                .background(Color("customBlue"))
                .border(.teal)
            TrainCar(.front)
        }
        
        TrainTrack()
    }
}


struct PaddingSomeEdges: View {
    
    var body: some View {
        Text("Padding Some Edges")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .padding([.leading])
                .border(.teal)
            TrainCar(.front)
        }
        TrainTrack()
    }
}


struct SpecificPadding: View {
    var body: some View {
        Text("Specific Padding")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .padding(5)
                .border(.teal)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct PaddingTheContainer: View {
    
    var body: some View {
        Text("Padding the Container")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        .padding()
        .background(Color("customRed"))
        .border(.teal)
        TrainTrack()
    }
}


struct PaddingTrainCars: View {
    var body: some View {
        VStack(spacing: 4) {
            DefaultPadding()
            PaddingSomeEdges()
            SpecificPadding()
            PaddingTheContainer()
        }
    }
}

#Preview {
    PaddingTrainCars()
}
