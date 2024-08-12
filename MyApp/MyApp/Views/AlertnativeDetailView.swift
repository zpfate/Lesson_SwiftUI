//
//  AlertnativeDetailView.swift
//  MyApp
//
//  Created by fate on 2024/8/2.
//

import SwiftUI

struct AlertnativeDetailView: View {
    
    @Binding var selectedEntry: JournalEntry?
    
    var body: some View {
        
        if let entry = selectedEntry {
            JournalEntryView(journalEntry: entry)
        } else {
            Text("Select a journal entry")
        }
    }
}


