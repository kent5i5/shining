//
//  WelcomeView.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            HStack {
                
                WelcomeMessage()
          
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            
            
    }
}
