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
        
        VStack{
            TextField("Please Enter Username", text: $enteredUsername)
            TextField("Please Enter Password", text: $enteredPassword)
        } .
    }
}

struct TeacherView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherView()
    }
}
