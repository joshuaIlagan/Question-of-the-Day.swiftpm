import SwiftUI

struct ContentView: View {
    @State private var textInput: String = "3(16x^2-60x+9)^2=100"

    var body: some View {
        VStack {
    TextField("Enter your text here", text: $textInput)
 .padding()
.textFieldStyle(RoundedBorderTextFieldStyle())

.padding()

            
Text("Solve, \(textInput)")
  .padding()
            
        }
        
  .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
