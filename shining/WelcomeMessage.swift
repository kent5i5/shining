//
//  WelcomeMessage.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct WelcomeMessage: View {
    var body: some View {
        HStack {
            WelcomeIcon()
        
            VStack {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                    
                Text("YinKin")
                    .font(.largeTitle)
                    .bold()

            }
            .foregroundColor(.blue)
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.leading)
            .padding(.horizontal)
        }
    }
}

struct WelcomeMessage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessage()
    }
}
