//
//  StuOrTeach.swift
//  Question of the Day
//
//  Created by Joshua S. Ilagan on 1/11/24.
//

import SwiftUI

struct StuOrTeach: View {
    var body: some View {
        VStack{
            TabView{
                StudentView()
                    .tabItem { 
                        Label("Student", systemImage: "pencil")
                    }
                TeacherView()
                    .tabItem { 
                        Label("Teacher", systemImage: "person.fill")
                    }
            }
        }
    }
}


struct StuOrTeach_Previews: PreviewProvider {
    static var previews: some View {
        StuOrTeach()
    }
}
