//
//  page.swift
//  shining
//
//  Created by ying kit ng on 12/13/20.
//

import SwiftUI

struct page: View {
    var pageName: String = ""

    var body: some View {
       
        Text(pageName)
        
        List
            {
                WelcomeBackgroundImage()
                    
        }.navigationBarTitle("Title: "+pageName)
//        ForEach(data){ d in
//            VStack {
//                Text("\(d[1])")
//            }
//        }
        
//        List(landmarks, id: \.id) { landmark in
//
//        }
        
    }
}

struct page_Previews: PreviewProvider {
    static var previews: some View {
        page()
    }
}
