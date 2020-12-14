//
//  drawingView.swift
//  shining
//
//  Created by ying kit ng on 12/13/20.
//

import SwiftUI

struct drawingView: View {
    var body: some View {
        
        ZStack {
            ForEach(0..<3){ i in
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                   
                Rectangle()
                 .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: .init(x:0, y: 1), endPoint: .init(x:1, y:0)))
                 .rotationEffect(.degrees(Double(i) * 60.0))
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    
            }
        }
      
        
    }
}

struct drawingView_Previews: PreviewProvider {
    static var previews: some View {
        drawingView()
            .previewDevice("iPhone 11")
            .environment(\.colorScheme, .dark)
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
