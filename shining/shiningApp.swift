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
            //WelcomeView()
            ContentView(rGuess: 0.5)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
//        .onChange(of: ScenePhase){ (newScenePhase) in
//            switch newScenePhase{
//            case .active:
//                print("ok")
//            case .inactive:
//                print("ok")
//            case .background:
//                print("ok")
//            @unknown default:
//                print("ok")
//
//            }
//        }
    }
}
