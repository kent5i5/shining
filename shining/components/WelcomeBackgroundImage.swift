//
//  WelcomeBackgroundImage.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        Image("pexels-pixabay-301673", bundle: nil)
           // .resizable()
            .scaleEffect(0.3)
            .scaledToFit()
            .aspectRatio(1/1,contentMode: .fill)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .saturation(0.8)
            .blur(radius: 5)
            .opacity(0.8)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
