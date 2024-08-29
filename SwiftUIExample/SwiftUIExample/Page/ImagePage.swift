//
//  ImagePage.swift
//  SwiftUIExample
//
//  Created by fate on 2024/8/29.
//

import SwiftUI

struct ImagePage: View {
    
    
    var body: some View {
        
        let range = 0..<4
        
        VStack {
            
            ForEach(range) { index in
                
                let float = CGFloat(index)
                Image("icon").resizable().frame(width: 40.0 * float, height: 40.0 * float, alignment: .center)
                
                
            }
        }.navigationTitle("Image")
        
    }
}

#Preview {
    ImagePage()
}
