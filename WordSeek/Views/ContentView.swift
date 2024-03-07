import SwiftUI
import PDFKit

struct ContentView: View {
    @State private var showingGrid = false
    @State private var newGrid = [[Character]]()
    @State private var selectedCategory: String = ""
    @State private var selectedList: WordList = WordList(category: "", words: [])
    var selected = wordLists.randomElement()!
    var pdfGenerator = PDFGenerator() // Assume this is your class for generating PDFs

    var body: some View {
        
        HStack() {
            VStack{
                Button("Generate New Grid") {
                    self.generateNewGrid()
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                .frame(minWidth: 100, maxWidth: 150, minHeight: 40)
                .background(RoundedRectangle(cornerRadius: 8).fill(Color.accentColor))
                .foregroundColor(Color.white)
                
                if showingGrid {
                    NewGridView(grid: self.newGrid, category: self.selectedCategory, createPDFAction: { })
                        .padding()
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
    
    func generateNewGrid() {
        let selected = wordLists.randomElement()!
        self.selectedCategory = selected.category
        self.newGrid = WordGridGenerator(words: Array(selected.words.shuffled().prefix(10).map { $0.uppercased() }), row: 15, column: 15).generate() ?? []
        self.showingGrid = true
    }
    
   
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
