//
//  AnimationView.swift
//  shining
//
//  Created by ying kit ng on 12/13/20.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var showDetails = false
    
    var flightDetailAnimation : Animation {
      Animation.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0)
    }
    var body: some View {
       
        VStack(alignment: .leading ){
            Button(action: {
                withAnimation(.easeIn) {
                self.showDetails.toggle()
              }
            }) {
                HStack {
                    Text(showDetails ? "hide Details" : "Show Details")
                
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showDetails ? 0: 180))
                        //.animation(.easeOut(duration: 2)) //default, easeIn, easeOut,  timingCure(_:_:_:_)
                        .animation(flightDetailAnimation)
                        
                }
            }
       
        if showDetails {
          DrawingPathView()
            .transition(.flightDetailsTransition)
        }
        }
        
    }
}

extension AnyTransition {
  static var flightDetailsTransition: AnyTransition {
    let insertion = AnyTransition.move(edge: .trailing)
      .combined(with: .opacity)
    let removal = AnyTransition.scale(scale: 1.0)
      .combined(with: .opacity)
    return .asymmetric(insertion: insertion, removal: removal)
  }
}


struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
