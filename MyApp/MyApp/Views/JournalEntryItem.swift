//
//  JournalEntryItem.swift
//  MyApp
//
//  Created by fate on 2024/8/1.
//

import SwiftUI

struct JournalEntryItem: View {
    
    let journalEntry: JournalEntry
    
    var body: some View {
        
        VStack(alignment: .leading, content: {
            DateView(date: journalEntry.createDate)
            Text("\(journalEntry.text)").lineLimit(2)
        })
    }
}

#Preview {
    JournalEntryItem(journalEntry: JournalEntry(createDate: Date(), text: "Test"))
}
