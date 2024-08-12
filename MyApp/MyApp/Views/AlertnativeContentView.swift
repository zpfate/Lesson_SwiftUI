//
//  AlertnativeContnetView.swift
//  MyApp
//
//  Created by fate on 2024/8/1.
//

import SwiftUI

struct AlertnativeContentView: View {
    
    @StateObject private var journal = Journal()
    @State private var selectedEntry: JournalEntry? = nil
    
    var body: some View {
        
        NavigationSplitView {
            List(journal.entries, selection: $selectedEntry) { entry in
                NavigationLink(value: entry) {
                    JournalEntryItem(journalEntry: entry)
                }
            }
            .navigationSplitViewColumnWidth(min: 200, ideal: 200)
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                ToolbarItem {
                    Button {
                        journal.addSampleEntry()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        } detail: {
            AlertnativeDetailView(selectedEntry: $selectedEntry)
        }
    }
}

#Preview {
    AlertnativeContentView()
}
