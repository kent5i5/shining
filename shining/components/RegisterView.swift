//
//  RegisterView.swift
//  shining
//
//  Created by ying kit ng on 12/9/20.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var keyboardHandler:KeyboardFollower
    
    //@EnvironmentObject var userManager: UserManager
    @State var name: String = ""
    @State var password: String = ""
    
    init(keyboardHandler: KeyboardFollower) {
        self.keyboardHandler = keyboardHandler
    }
    
    var body: some View {
        VStack{
            WelcomeMessage()
        
            ModifiedContent (
                content: TextField("Type your name...", text: $name),
                modifier: BorderedViewModifier()
            )
            
            TextField("Type your name...", text: $password)
                .bordered()
            Button(action: {registerUser()}, label: {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("Start Learning")
                        .bold()
                    
//                    Toggle(isOn: true) {
//                        Text("Remember Me")
//                            
//                    }
                    
                    
                }
            })
            .bordered()
            .foregroundColor(.black)
            
            
                
            
        }
        .padding(.bottom, keyboardHandler.keyboardHeight)
        .background(WelcomeBackgroundImage())
        .padding()
    }
}

// MARK: - Event Handlers
extension RegisterView {
  func registerUser() {
    print("Start Learning")
//    if userManager.settings.rememberUser {
//      userManager.persistProfile()
//    } else {
//      userManager.clear()
//    }
//
//    userManager.persistSettings()
  }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(keyboardHandler: KeyboardFollower())
            //.environmentObject(user)
            .previewDevice("iPhone 11")
            //.environmentObject(userManager)
    }
}
