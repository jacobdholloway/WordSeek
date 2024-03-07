import SwiftUI
import AppKit

struct NewGridView: View {
    
    let grid: [[Character]]
    let category: String
    let words: [String]  // Add this line to accept the words
    
    var body: some View {
        HStack {
            HStack{// Grid view
                VStack {
                    ScrollView {
                        Text(category)  // Display the category
                            .font(.headline)  // Set the font to headline for better visibility
                            .padding(.top)
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 5), count: grid.first?.count ?? 0), spacing: 2) {
                            ForEach(0..<grid.count, id: \.self) { rowIndex in
                                ForEach(0..<grid[rowIndex].count, id: \.self) { columnIndex in
                                    Text(String(grid[rowIndex][columnIndex]))
                                        .frame(width: 30, height: 30)  // Adjust size for better visibility
                                        .background(Color.white)
                                        .foregroundColor(Color.black)
                                        .id("\(rowIndex)-\(columnIndex)")
                                }
                            }
                        }
                    }
                    .padding([.trailing, .leading, .top])
                }
            }
            
             // Add a spacer to push the words list to the right
            
            // Word list
            VStack(alignment: .leading) {
                 // Add space at the top for alignment with the grid
                Text("Words")  // You might want to style this header
                    .font(.headline)
                    .padding([.bottom, .top])  // Add padding on top and bottom for spacing
                ForEach(words, id: \.self) { word in
                    Text(word)
                        
                }
                Spacer()
            }
            .padding([.trailing, .leading, .top])
            
        }
        .foregroundColor(Color.black)
        .background(Color.white)
        
    }
    
}

struct Previews: PreviewProvider {
    static var previews: some View {
        let gameGrid: [[Character]] = [["A", "B", "C"], ["D", "E", "F"], ["G", "H", "I"]]  // Sample grid for preview purposes
        let category: String = "Animals"
        let words: [String] = ["Dog", "Cat", "Bat"]  // Sample words for preview purposes
        NewGridView(grid: gameGrid, category: category, words: words)
    }
}
