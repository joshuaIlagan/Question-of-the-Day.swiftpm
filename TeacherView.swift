//
//  TeacherView.swift
//  Question of the Day
//
//  Created by Joshua S. Ilagan on 1/11/24.
//

import SwiftUI

struct TeacherView: View {
    
    @State var enteredPassword = ""
    @State var enteredUsername = ""
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                InputView(text: $enteredUsername, title: "Username", placeholder: "Enter Your Username", isSecureField: false)
                
                InputView(text: $enteredPassword, title: "Password", placeholder: "Enter Your Password", isSecureField: true)
                
                NavigationLink(destination: TeacherQOTD()) {
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.top, 24)
                }
                
                Button {
                    print ("Log user in..")
                } label: {
                    HStack {
                        Text ("SIGN IN")
                            .fontWeight (.semibold)
                        Image (systemName: "arrow.right")
                    }
                    .foregroundColor (.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background (Color (.systemBlue) )
                .cornerRadius(10)
                .padding(.top, 24)
                
                
            }
        }
    }
}
struct TeacherView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherView()
    }
}


struct InputView: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundColor (Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            if isSecureField {
                SecureField (placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            Divider ()
        }
    }
}
