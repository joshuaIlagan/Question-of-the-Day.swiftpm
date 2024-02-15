import Foundation
import SwiftUI


struct Answers: View {
    @State private var buttonStates = [false, false, false, false]
    @State private var textInput: String = "3(16x^2-60x+9)^2=100"

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.buttonPressed(index: 0)
                }) {
                    Text("Button 1")
                        .padding()
                        .foregroundColor(buttonStates[0] ? .white : .blue)
                        .background(buttonStates[0] ? Color.green : Color.blue)
                        .cornerRadius(10)
                }

                Button(action: {
                    self.buttonPressed(index: 1)
                }) {
                    Text("Button 2")
                        .padding()
                        .foregroundColor(buttonStates[1] ? .white : .blue)
                        .background(buttonStates[1] ? Color.red : Color.blue)
                        .cornerRadius(10)
                }
            }

            HStack {
                Button(action: {
                    self.buttonPressed(index: 2)
                }) {
                    Text("Button 3")
                        .padding()
                        .foregroundColor(buttonStates[2] ? .white : .blue)
                        .background(buttonStates[2] ? Color.green : Color.blue)
                        .cornerRadius(10)
                }

                Button(action: {
                    self.buttonPressed(index: 3)
                }) {
                    Text("Button 4")
                        .padding()
                        .foregroundColor(buttonStates[3] ? .white : .blue)
                        .background(buttonStates[3] ? Color.red : Color.blue)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }

    private func buttonPressed(index: Int) {
        // Reset all button states
        buttonStates = [false, false, false, false]
        // Toggle the selected button's state
        buttonStates[index].toggle()
    }
}

struct Answers_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
