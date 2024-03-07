//  pdfGenerator.swift
//  WordSeek
//  The purpose of the this document is to take the window that is generated when making a word search and allow it to become a pdf.
//  In doing this, it will allow a user to save as pdf and print if needed.
//  Created by Jacob Holloway on 3/6/24.
//

import Foundation
import Cocoa
import PDFKit
import UniformTypeIdentifiers
import Quartz


class PDFGenerator {

    func createPDF(fromGrid grid: [[Character]], withTitle title: String) -> PDFDocument? {
        // Assuming gridSize, title, etc., are set correctly
        let pageSize = CGSize(width: 612, height: 792) // Standard US Letter size
        let pdfURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("temp.pdf")
        
        var mediaBox = CGRect(origin: .zero, size: pageSize)
        guard let pdfContext = CGContext(pdfURL as CFURL, mediaBox: &mediaBox, nil) else {
            print("Failed to create PDF context")
            return nil
        }
        
        // Begin a new page
        pdfContext.beginPDFPage(nil)
        
        // Drawing operations
        // For instance, drawing the title:
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: NSFont.boldSystemFont(ofSize: 18),
            .foregroundColor: NSColor.black
        ]
        let titleString = NSAttributedString(string: title, attributes: titleAttributes)
        titleString.draw(at: CGPoint(x: 20, y: pageSize.height - 40))
        
        // Drawing the grid
        let gridAttributes: [NSAttributedString.Key: Any] = [
            .font: NSFont.systemFont(ofSize: 12),
            .foregroundColor: NSColor.black
        ]
        let gridString = NSAttributedString(string: generateLetterGrid(grid: grid), attributes: gridAttributes)
        gridString.draw(at: CGPoint(x: 20, y: pageSize.height - 60))
        
        // Complete the PDF page and context
        pdfContext.endPDFPage()
        pdfContext.closePDF()
        
        // Now, we can create a PDFDocument from the file we just created
        return PDFDocument(url: pdfURL)
    }
    
    func generateLetterGrid(grid: [[Character]]) -> String {
        var gridString = ""
        for row in grid {
            let rowString = row.map { String($0) }.joined(separator: " ")
            gridString += rowString + "\n"
        }
        return gridString
    }
    
    func createPDFWithNewGrid(row: Int, column: Int, words: [String], title: String) -> PDFDocument? {
        let gridGenerator = WordGridGenerator(words: words, row: row, column: column)
        let newGrid = gridGenerator.generate() ?? []
        return createPDF(fromGrid: newGrid, withTitle: title)
    }
    
    func savePDF(document: PDFDocument) {
        let savePanel = NSSavePanel()
        savePanel.allowedContentTypes = [UTType.pdf]
        savePanel.begin { result in
            if result == .OK, let url = savePanel.url {
                document.write(to: url)
            }
        }
    }

    func printPDF(document: PDFDocument) {
        let pdfView = PDFView()
        pdfView.document = document
        pdfView.print(with: NSPrintInfo.shared, autoRotate: true)
    }
    
    func previewPDF(document: PDFDocument) {
        // Create a new window for the PDF preview
        let pdfWindow = NSWindow(
            contentRect: NSRect(x: 200, y: 200, width: 612, height: 792), // Adjust the window size as needed
            styleMask: [.titled, .closable, .resizable],
            backing: .buffered,
            defer: false)
        pdfWindow.title = "PDF Preview"
        
        // Create a PDFView and set its document
        let pdfView = PDFView()
        pdfView.document = document
        pdfView.autoScales = true  // Automatically scale the PDF to fit the view
        
        // Set the PDFView as the window's content view
        pdfWindow.contentView = pdfView
        
        // Show the window
        pdfWindow.makeKeyAndOrderFront(nil)
    }
    
    func generateAndPreviewPDF() {
        // Assuming createPDFWithNewGrid is used to generate the document
        if let document = createPDFWithNewGrid(row: 15, column: 15, words: ["Example"], title: "Sample Grid") {
            previewPDF(document: document)
        
        }
    }


}
