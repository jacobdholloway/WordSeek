import SwiftUI

// Define the line style
struct LineStyle {
    var opacity: Double
    var lineWidth: CGFloat
    var strokeColor: Color
}

// Define the position in a grid
struct Position {
    var row: Int
    var col: Int
    
}


struct Line {
    var startPos: Position
    var endPos: Position
    var lineStyle: LineStyle
    var cellSize: CGSize
    
    // Convert grid positions to CGPoint for drawing
    func point(from position: Position) -> CGPoint {
        CGPoint(
            x: CGFloat(position.col) * cellSize.width + cellSize.width / 2,
            y: CGFloat(position.row) * cellSize.height + cellSize.height / 2)
    }
    
    // Create a Path from the line positions
    func path() -> Path {
        var path = Path()
        path.move(to: point(from: startPos))
        path.addLine(to: point(from: endPos))
        return path
    }
}

// SwiftUI view for displaying a line
struct LineView: View {
    var line: Line
    
    var body: some View {
        line.path()
            .stroke(line.lineStyle.strokeColor, lineWidth: line.lineStyle.lineWidth)
            .opacity(line.lineStyle.opacity)
    }
}
