//
//  SwiftUI_JournalApp.swift
//  SwiftUI-Journal
//
//  Created by David Svensson on 2023-04-03.
//

import SwiftUI

@main
struct SwiftUI_JournalApp: App {
    
    @StateObject var journal  = JournalViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(journal)
        }
    }
}
