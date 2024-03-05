import SwiftUI

// Define a model for your words
struct WordItem: Identifiable {
    let id = UUID()
    var text: String
    var isSelected: Bool
}

// SwiftUI View for displaying a word
struct WordView: View {
    var word: WordItem
    
    var body: some View {
        Text(word.text)
            .padding()
            .foregroundColor(word.isSelected ? .white : .black)
            .background(word.isSelected ? Color.blue : Color.clear)
            .cornerRadius(5)
    }
}

// SwiftUI View replacing the WordListCollectionView
struct WordListView: View {
    @State private var words: [WordItem] = [] // Populate this array with your words

    // Define the layout for your grid
    private var gridLayout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout, spacing: 10) {
                ForEach($words) { $word in
                    WordView(word: word)
                        .onTapGesture {
                            word.isSelected.toggle()
                        }
                }
            }
            .padding(10)
        }
    }
    
    // Function to reset selection
    func resetSelection() {
        for index in words.indices {
            words[index].isSelected = false
        }
    }

    // Function to select a word
    func selectWord(_ selectedWord: String) {
        if let index = words.firstIndex(where: { $0.text == selectedWord }) {
            words[index].isSelected = true
        }
    }
}

// Preview for your SwiftUI View
struct WordListView_Previews: PreviewProvider {
    static var previews: some View {
        WordListView()
    }
}
