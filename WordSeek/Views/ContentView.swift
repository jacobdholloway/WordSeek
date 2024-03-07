import SwiftUI
import PDFKit

struct ContentView: View {
    @State private var showingGrid = false
    @State private var newGrid = [[Character]]()
    @State private var selectedCategory: String = ""
    @State private var selectedList: WordList = WordList(category: "", words: [])
    @State private var gridWords = [String]()
    // Save the words used
//    var selected = wordLists.randomElement()!
    
    func generateNewGrid() {
        let selected = wordLists.randomElement()!
        self.selectedCategory = selected.category
        self.newGrid = WordGridGenerator(words: Array(selected.words.shuffled().prefix(10).map { $0.uppercased() }), row: 15, column: 15).generate() ?? []
        self.gridWords = Array(selected.words.shuffled().prefix(25).map { $0.uppercased() })
        self.showingGrid = true
    }
    
    var body: some View {
        
        
        
        HStack() {
            VStack{
               
                HStack{
                    Button("Generate New Search") {
                        self.generateNewGrid()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .frame(minWidth: 100, maxWidth: 150, minHeight: 40)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.accentColor))
                    .foregroundColor(Color.white)
                    
                    Button("Generate PDF") {
                        self.generateNewGrid()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .frame(minWidth: 100, maxWidth: 150, minHeight: 40)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.accentColor))
                    .foregroundColor(Color.white)
                    
                }
                if showingGrid {
                    NewGridView(grid: self.newGrid, category: self.selectedCategory, words: self.gridWords) // Use self.gridWords here
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
        
   
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
