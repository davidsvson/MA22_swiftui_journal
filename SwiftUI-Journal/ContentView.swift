//
//  ContentView.swift
//  SwiftUI-Journal
//
//  Created by David Svensson on 2023-04-03.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var journal : JournalViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(journal.entries) { entry in
                        NavigationLink(destination: JournalEntryView(entry: entry)) {
                            RowView(entry: entry)
                        }
                    }
                }
            }
            .navigationTitle("Journal")
            .navigationBarItems( trailing: NavigationLink(destination: JournalEntryView()) {
                    Image(systemName: "plus.circle")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    let entry : JournalEntry
    
    var body: some View {
        HStack {
            Text(entry.date)
            Spacer()
            Text(entry.content.prefix(7)+"...")
        }
    }
}
