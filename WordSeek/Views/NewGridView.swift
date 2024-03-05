//
//  NewGridView.swift
//  WordSeek
//
//  Created by Jacob Holloway on 3/4/24.
//

import SwiftUI

struct NewGridView: View {
    
    let grid: [[Character]]
    let category: String
    
    var body: some View {
            // Define the columns for the new grid
            let columns = Array(repeating: GridItem(.flexible(), spacing: 5), count: grid.first?.count ?? 0)  // Use the actual grid size or a default value

            // New grid view content
            VStack {  // Use a VStack to place the category label above the grid
                Text(category)  // Display the category
                    .font(.headline)// Set the font to headline for better visibility
                    .padding()
                      
                

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(0..<grid.count, id: \.self) { rowIndex in
                            ForEach(0..<grid[rowIndex].count, id: \.self) { columnIndex in
                                Text(String(grid[rowIndex][columnIndex]))
                                    .frame(width: 20, height: 20)  // Adjust size for better visibility
                                    .background(Color.white)
                                    .foregroundColor(Color.black)
                                    .id("\(rowIndex)-\(columnIndex)")
                            }
                        }
                    }
                    .padding()
                }
            }
            .foregroundColor(Color.black)
            .background(Color.white)
        }
    }


struct Previews: PreviewProvider {
    static var previews: some View {
        let gameGrid: [[Character]] = Grid.init()
        let category: String = "Animals"
        NewGridView(grid: gameGrid, category: category)
    }
}
