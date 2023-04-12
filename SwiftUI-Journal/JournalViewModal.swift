//
//  JournalViewModal.swift
//  SwiftUI-Journal
//
//  Created by David Svensson on 2023-04-03.
//

import Foundation

class JournalViewModel : ObservableObject {
    @Published var entries = [JournalEntry]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "jag åt"))
        entries.append(JournalEntry(content: "jag sov"))
        entries.append(JournalEntry(content: "jag programmerade"))
        
    }
    
    func update(entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry) {
            entries[index].content = content
        }
    }
}
