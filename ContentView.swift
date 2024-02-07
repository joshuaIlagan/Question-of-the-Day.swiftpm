import SwiftUI

struct ContentView: View {
    @State private var textInput: String = "Enter Question"

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
