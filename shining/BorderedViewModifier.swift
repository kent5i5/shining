//
//  BorderedViewModifier.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct BorderedViewModifier: ViewModifier {
    //typealias Body = <#type#>
    
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 2)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
    }
}

extension View{
    func bordered() -> some View{
        ModifiedContent (
            content: self,
            modifier: BorderedViewModifier()
        )
    }
}

