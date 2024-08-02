//
//  JounalEntryView.swift
//  MyApp
//
//  Created by fate on 2024/8/2.
//

import SwiftUI

struct JournalEntryView: View {

    let journalEntry: JournalEntry
    
    private var title: String {
        journalEntry.createDate.formatted(Date.FormatStyle().weekday(.abbreviated).day().year()
        )
    }
        
    var body: some View {
        ScrollView {
            Text(journalEntry.text)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        #if os(iOS)
        .navigationTitle(title)
        #elseif os(macOS)
        .navigationSubtitle(title)
        #endif
    }
}

#Preview {
    JournalEntryView(journalEntry: JournalEntry(createDate: Date(), text: "Test"))
}
