//
//  KeywordBubbleDefaultPadding.swift
//  MyApp
//
//  Created by fate on 2024/8/6.
//

import SwiftUI

struct KeywordBubbleDefaultPadding: View {
    
    let keyword: String
    let symbol: String
    
    @ScaledMetric(relativeTo: .title) var padding = 14.5

    
    var body: some View {
        
        Label(keyword, systemImage: symbol)
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(.purple.opacity(0.75), in: Capsule())
    }
}


struct KeywordBubbleDefaultPadding_Previews: PreviewProvider {
    
    static let keywords = ["chives", "fern-leaf lavender"]
    
    static var previews: some View {
        VStack {
            ForEach(keywords, id: \.self) { word in
                KeywordBubbleDefaultPadding(keyword: word, symbol: "leaf")
            }
        }
    }
   
}

