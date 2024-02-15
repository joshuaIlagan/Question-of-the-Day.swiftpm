import SwiftUI

    struct ContentView: View {
        @State private var selectedOption: Int?
        @State private var isCorrectAnswerSelected = false
        @State private var textInput: String = "3(16x^2-60x+9)^2=100"
        
        
        let options = ["Option 1", "Option 2", "Option 3", "Option 4"]
        let correctAnswerIndex = 2 // Change this to the correct answer index (0-indexed)

        var body: some View {
            VStack(spacing: 20) {
                ForEach(0..<2) { row in
                    HStack(spacing: 20) {
                        ForEach(0..<2) { col in
                            let index = row * 2 + col
                            Button(action: {
                                optionSelected(index)
                            }) {
                                Text(options[index])
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(getButtonColor(index: index))
                                    .foregroundColor(.white)
                            }
                            .cornerRadius(10)
                        }
                    }
                }
            }
            .padding()
        }

        func optionSelected(_ index: Int) {
            selectedOption = index
            isCorrectAnswerSelected = (index == correctAnswerIndex)
        }

        func getButtonColor(index: Int) -> Color {
            if let selectedOption = selectedOption {
                if selectedOption == index {
                    return isCorrectAnswerSelected ? .green : .red
                }
            }
            return .blue // Default color
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
