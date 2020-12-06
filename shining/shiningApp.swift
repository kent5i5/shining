//
//  shiningApp.swift
//  shining
//
//  Created by ying kit ng on 12/5/20.
//

import SwiftUI

@main
struct shiningApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(rGuess: 0.5)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
