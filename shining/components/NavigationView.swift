//
//  NavigationView.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct myNavigationView: View {
    var body: some View {
       
        NavigationView {
            ZStack{
               // Image(systemName: "airplane")
                VStack {
                    NavigationLink(destination: page(pageName: "1")) {
                        Text("1")
                    }
                
                    NavigationLink(destination: page(pageName: "2")) {
                        Text("2")
                    }
                }
                    
            }.font(.title).padding(20)


        }.navigationBarTitle(Text("Pages"))

        
        
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct myNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        myNavigationView()
    }
}
