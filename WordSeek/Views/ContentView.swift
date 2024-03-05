import SwiftUI


struct ContentView: View {
    @State private var showingGridSheet = false
    @State private var newGrid = [[Character]]()
    @State private var selectedCategory: String = ""
 
   
    
    @State private var selectedList: WordList = WordList(category: "", words: [])
    
//    let gridGenerator = WordGridGenerator(words: Array(selectedList), row: 15, column: 15)

    var body: some View {
        ScrollView {
            Button("Generate New Grid") {
                // Randomly select a word list and its category
                let selected = wordLists.randomElement()!
                self.selectedCategory = selected.category // Update the selected category
                
                // Update the grid generator with the new words
                let gridGenerator = WordGridGenerator(words: Array(selected.words.shuffled().prefix(10).map { $0.uppercased() }), row: 15, column: 15)
                self.newGrid = gridGenerator.generate() ?? []
                self.showingGridSheet = true
            }
            .padding()
        }
        .padding()
        .sheet(isPresented: $showingGridSheet) {
            // Pass the new grid to NewGridView for display
            NewGridView(grid: self.newGrid, category: self.selectedCategory)
        }
    }
}

// Preview provider for testing
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
