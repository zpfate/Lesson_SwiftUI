//
//  EvenTile.swift
//  MyApp
//
//  Created by fate on 2024/8/6.
//

import SwiftUI

struct Event {
    let title: String
    let date: Date
    let locaiton: String
    let symbol: String
}

struct EventTile: View {
    
    let event: Event
    let stripeHeight = 15.0
    
    var body: some View {
        
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(.title)
            
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.title)
                
                Text(event.date, format: Date.FormatStyle().day(.defaultDigits).month(.wide))
                
                Text(event.locaiton)
            }
        }
        .padding()
        .padding(.top, stripeHeight)
        .background {
            ZStack(alignment: .top) {
                Rectangle().opacity(0.3)
                Rectangle().frame(maxHeight: stripeHeight)
            }
            .foregroundColor(.teal)
        }
        .clipShape(RoundedRectangle(cornerRadius: stripeHeight, style: .continuous))
    }
}

#Preview {
    EventTile(event: Event(title: "Buy Daisies", date: .now, locaiton: "Flower Shop", symbol: "gift"))
}
