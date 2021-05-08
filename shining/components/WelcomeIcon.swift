//
//  WelcomeIcon.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct WelcomeIcon: View {
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(60/2)
            .border(Color(white: 0.9))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .foregroundColor(.red)
    }
}

struct WelcomeIcon_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeIcon()
    }
}
