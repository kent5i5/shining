//
//  TabsView.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView{
//            ContentView(rGuess: 0.5)
//                .tabItem {
//                    Image(systemName: "icloud.and.arrow.down").resizable()
//                    Text("icon")
//                }
//                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            WelcomeMessage()
                .tabItem {
                    Image(systemName: "icloud.and.arrow.down").resizable()
                    Text("icon")
                }
            WelcomeIcon()
                .tabItem {
                    Image(systemName: "icloud.and.arrow.up").resizable()
                    Text("icon")
                }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
