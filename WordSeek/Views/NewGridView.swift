//
//  NewGridView.swift
//  WordSeek
//
//  Created by Jacob Holloway on 3/4/24.
//

import SwiftUI
import AppKit

struct NewGridView: View {
    
    let grid: [[Character]]
    let category: String
    var createPDFAction: () -> Void
    
    var body: some View {
            // Define the columns for the new grid
            let columns = Array(repeating: GridItem(.flexible(), spacing: 5), count: grid.first?.count ?? 0)  // Use the actual grid size or a default value
        

            VStack{
                ScrollView {
                    
                    Text(category)  // Display the category
                        .font(.headline)// Set the font to headline for better visibility
                    
                        .padding(.top)
                    LazyVGrid(columns: columns, spacing: 2) {
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
                .padding([.trailing,.leading,.top])

                }
            
            .foregroundColor(Color.black)
            .background(Color.white)
            }
        }
        


struct Previews: PreviewProvider {
    static var previews: some View {
        let gameGrid: [[Character]] = Grid.init()
        let category: String = "Animals"
        NewGridView(grid: gameGrid, category: category, createPDFAction: { })
    }
}
