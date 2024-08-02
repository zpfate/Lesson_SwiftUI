//
//  JournalEntry.swift
//  MyApp
//
//  Created by fate on 2024/8/1.
//

import Foundation


struct JournalEntry: Identifiable, Hashable {
    
    let id = UUID()
    let createDate: Date
    var text = ""
    
    init(createDate: Date, text: String = "") {
        self.createDate = createDate
        self.text = text
    }
}
