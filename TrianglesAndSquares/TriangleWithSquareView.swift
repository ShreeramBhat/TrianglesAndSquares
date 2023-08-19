//
//  File.swift
//  TrianglesAndSquares
//
//  Created by Shreeram Bhat on 19/08/23.
//

import UIKit

class TriangleWithSquareView: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Call the function to draw an equilateral triangle with a square inside
        drawTriangleWithSquare(in: rect)
    }
        
    // Function to draw an equilateral triangle with a square inside
    private func drawTriangleWithSquare(in rect: CGRect) {
        let trianglePath = UIBezierPath()
        
        // Calculate triangle vertices
        let topPoint = CGPoint(x: rect.midX, y: rect.minY)
        let bottomLeftPoint = CGPoint(x: rect.minX, y: rect.maxY)
        let bottomRightPoint = CGPoint(x: rect.maxX, y: rect.maxY)
        
        // Move to the top point of the triangle
        trianglePath.move(to: topPoint)
        // Draw lines to the bottom left and bottom right points
        trianglePath.addLine(to: bottomLeftPoint)
        trianglePath.addLine(to: bottomRightPoint)
        // Close the path to complete the triangle
        trianglePath.close()
        
        // Draw the triangle
        UIColor.black.setStroke()
        trianglePath.stroke()
        
//         Calculate square's side length
        let squareSideLength: CGFloat = (sqrt(3) * rect.width) / (2 + sqrt(3))

        // Calculate square's origin point to center it in the triangle
        let squareOrigin = CGPoint(x: rect.midX - squareSideLength / 2, y: rect.maxY - squareSideLength)

        // Draw the square
        let squarePath = UIBezierPath(rect: CGRect(origin: squareOrigin, size: CGSize(width: squareSideLength, height: squareSideLength)))
        UIColor.black.setStroke() // You can adjust the color
        squarePath.stroke()
    }
    
}



