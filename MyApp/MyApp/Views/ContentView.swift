//
//  ContentView.swift
//  MyApp
//
//  Created by fate on 2024/8/1.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var journal = Journal()
    
    var body: some View {
        
        NavigationStack {
            List(journal.entries) { entry in
                
                NavigationLink(value: entry) {
                    JournalEntryItem(journalEntry: entry)
                }
                
            }
            .navigationDestination(for: JournalEntry.self) { entry in
                JournalEntryView(journalEntry: entry)
            }
            .navigationTitle("Journal")
            .toolbar {
                ToolbarItem {
                    Button {
                        journal.addSampleEntry()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

