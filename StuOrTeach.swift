//
//  StuOrTeach.swift
//  Question of the Day
//
//  Created by Joshua S. Ilagan on 1/11/24.
//

import SwiftUI

struct StuOrTeach: View {
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: StudentView()) {
                    Text("I am a student")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                    NavigationLink(destination: TeacherView()) {
                        Text("I am a teacher")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                }
                .navigationBarTitle("Which one are you", displayMode: .inline)
            }
        }
    }
}
    struct StuOrTeach_Previews: PreviewProvider {
        static var previews: some View {
            StuOrTeach()
        }
    }
