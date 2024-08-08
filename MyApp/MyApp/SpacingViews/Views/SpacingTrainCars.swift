//
//  TrainTrack.swift
//  MyApp
//
//  Created by fate on 2024/8/7.
//

import SwiftUI

enum TrainSymbol: String {
    
    case front = "train.side.front.car"
    case middle = "train.side.middle.car"
    case rear = "train.side.rear.car"
}

struct TrainTrack: View {
    var body: some View {
        Divider().frame(maxWidth: 200)
    }
}


struct TrainCar: View {
    
    let position: TrainSymbol
    let showFrame: Bool
    
    init(_ position: TrainSymbol, showFrame: Bool = true) {
        self.position = position
        self.showFrame = showFrame
    }
    
    var body: some View {
        Image(systemName: position.rawValue)
            .border(showFrame ? .gray : .clear, width: 0.5)
    }
}

struct DefaultSpacing: View {
    var body: some View {
        Text("Default Spacing")
        HStack {
            TrainCar(.front)
            TrainCar(.middle)
            TrainCar(.rear)
        }
        TrainTrack()
    }
}

struct SpecificSpacing: View {
    var body: some View {
        
        Text("Specific Spacing")
        HStack (spacing: 20) {
            TrainCar(.front)
            TrainCar(.middle)
            TrainCar(.rear)
        }
        TrainTrack()
    }
}

struct ScaleSpacing: View {
    
    @ScaledMetric var trainCarSpace = 5
    
    var body: some View {
        Text("Scaled Spacing")
        HStack (spacing: trainCarSpace) {
            TrainCar(.front)
            TrainCar(.middle)
            TrainCar(.rear)
        }
    }
}


struct ZeroSpacing: View {
    
    var body: some View {
        Text("Zero Spacing")
        HStack (spacing: .zero) {
            TrainCar(.front)
            TrainCar(.middle)
            TrainCar(.rear)
        }
    }
}


struct SpacingTrainCars: View {
    
    var body: some View {
        VStack(spacing: 4, content: {
            DefaultSpacing()
            SpecificSpacing()
            ScaleSpacing()
            ZeroSpacing()
        })
    }
}


struct TrainCar_Previews: PreviewProvider {
    
    static var previews: some View {
        SpacingTrainCars()
    }
}

