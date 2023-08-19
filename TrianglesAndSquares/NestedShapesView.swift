//
//  File.swift
//  TrianglesAndSquares
//
//  Created by Shreeram Bhat on 19/08/23.
//

//import UIKit

//class NestedShapesView: UIView {
//
//    var levels = 4
//
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//
//        // Call functions to draw nested shapes
//        drawNestedShapes(in: rect)
//    }
//
//    // Function to draw nested shapes
//    private func drawNestedShapes(in rect: CGRect) {
//        // Calculate center of the view
//        let centerX = rect.width / 2
//        let centerY = rect.height / 2
//        let centerPoint = CGPoint(x: centerX, y: centerY)
//
//        // Calculate the side length of the largest square
//        let sideLength = min(rect.width, rect.height) * 0.8
//
//        // Draw squares and triangles
//        drawNestedSquares(center: centerPoint, sideLength: sideLength, levels: levels)
//        drawNestedTriangles(center: centerPoint, sideLength: sideLength, levels: levels)
//    }
//
//    // Function to draw nested squares
//    private func drawNestedSquares(center: CGPoint, sideLength: CGFloat, levels: Int) {
//        var sideLength = sideLength
//        for _ in 0..<levels {
//            let squareRect = CGRect(x: center.x - sideLength / 2, y: center.y - sideLength / 2, width: sideLength, height: sideLength)
//
//            // Draw the square
//            let squarePath = UIBezierPath(rect: squareRect)
//            UIColor.black.setStroke()
//            squarePath.stroke()
//
//            UIColor.white.setFill()
//            squarePath.fill()
//
//            // Calculate side length for the next square
//            sideLength = sideLength * 0.7
//        }
//    }
//
//    // Function to draw nested triangles
//    private func drawNestedTriangles(center: CGPoint, sideLength: CGFloat, levels: Int) {
//        var sideLength = sideLength
//
//        for _ in 0..<levels {
//            let triangleHeight = (sqrt(3) / 2) * sideLength
//            let triangleTopPoint = CGPoint(x: center.x, y: center.y - triangleHeight / 2)
//            let trianglePath = UIBezierPath()
//
//            trianglePath.move(to: triangleTopPoint)
//            trianglePath.addLine(to: CGPoint(x: triangleTopPoint.x - sideLength / 2, y: triangleTopPoint.y + triangleHeight))
//            trianglePath.addLine(to: CGPoint(x: triangleTopPoint.x + sideLength / 2, y: triangleTopPoint.y + triangleHeight))
//            trianglePath.close()
//
//            // Draw the triangle
//            UIColor.black.setStroke()
//            trianglePath.stroke()
//
//            UIColor.white.setFill()
//            trianglePath.fill()
//
//            // Calculate side length for the next triangle
//            sideLength = sideLength * 0.7
//        }
//    }
//}

//import UIKit
//
//class RecursiveNestedShapesView: UIView {
//
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//
//        // Call recursive functions to draw nested shapes
//        drawNestedShapes(center: CGPoint(x: rect.midX, y: rect.midY), sideLength: min(rect.width, rect.height) * 0.8, levels: 5)
//    }
//
//    // Recursive function to draw nested shapes
//    private func drawNestedShapes(center: CGPoint, sideLength: CGFloat, levels: Int) {
//        if levels <= 0 {
//            return
//        }
//
//        // Draw a square
//        let squareRect = CGRect(x: center.x - sideLength / 2, y: center.y - sideLength / 2, width: sideLength, height: sideLength)
//        let squarePath = UIBezierPath(rect: squareRect)
//        UIColor.black.setStroke()
//        squarePath.stroke()
//
//        // Draw an equilateral triangle
//        let triangleHeight = (sqrt(3) / 2) * sideLength
//        let triangleTopPoint = CGPoint(x: center.x, y: center.y - triangleHeight / 2)
//        let trianglePath = UIBezierPath()
//
//        trianglePath.move(to: triangleTopPoint)
//        trianglePath.addLine(to: CGPoint(x: triangleTopPoint.x - sideLength / 2, y: triangleTopPoint.y + triangleHeight))
//        trianglePath.addLine(to: CGPoint(x: triangleTopPoint.x + sideLength / 2, y: triangleTopPoint.y + triangleHeight))
//        trianglePath.close()
//
//        UIColor.black.setStroke()
//        trianglePath.stroke()
//
//        UIColor.white.setFill()
//        trianglePath.fill()
//
//        // Calculate side length for the next shapes
//        let nextSideLength = sideLength * 0.7
//
//        // Calculate center point for the next shapes
//        let xOffset = (sideLength - nextSideLength) / 2
//        let yOffset = (triangleHeight - nextSideLength) / 2
//        let nextCenter = CGPoint(x: center.x + xOffset, y: center.y + yOffset)
//
//        // Recursively draw the next level of shapes
//        drawNestedShapes(center: nextCenter, sideLength: nextSideLength, levels: levels - 1)
//    }
//}

//import UIKit
//
//class EquilateralTriangleView: UIView {
//
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//
//        // Call the function to draw an equilateral triangle
//        drawEquilateralTriangle(in: rect)
//    }
//
//    // Function to draw an equilateral triangle
//    private func drawEquilateralTriangle(in rect: CGRect) {
//        // Calculate triangle parameters
//        let centerX = rect.midX
//        let topPoint = CGPoint(x: centerX, y: rect.minY)
//        let sideLength = rect.width
//
//        let trianglePath = UIBezierPath()
//
//        trianglePath.move(to: topPoint)
//        trianglePath.addLine(to: CGPoint(x: topPoint.x - sideLength / 2, y: topPoint.y + (sqrt(3) / 2) * sideLength))
//        trianglePath.addLine(to: CGPoint(x: topPoint.x + sideLength / 2, y: topPoint.y + (sqrt(3) / 2) * sideLength))
//        trianglePath.close()
//
//        trianglePath.lineWidth = 1
//
//        // Draw the triangle
//        UIColor.black.setStroke()
//        trianglePath.stroke()
//
////        UIColor.white.setFill()
////        trianglePath.fill()
//
////        let squarePath = UIBezierPath(rect: rect)
////
////        // Draw the square
////        UIColor.black.setStroke()
////        squarePath.stroke()
//
//    }
//}
//
class SquareView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        // Call the function to draw a square
        drawSquare(in: rect)
    }

    // Function to draw a square
    private func drawSquare(in rect: CGRect) {
        let squarePath = UIBezierPath(rect: rect)

        // Draw the square
        UIColor.black.setStroke()
        squarePath.stroke()
    }
}

import UIKit

class TriangleWithSquareView: UIView {
    
//    var width = 200

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Call the function to draw an equilateral triangle with a square inside
        drawTriangleWithSquare(in: rect)
    }
    
    // Function to draw nested triangles
    private func drawNestedTriangles(center: CGPoint, sideLength: CGFloat, levels: Int) {
        var sideLength = sideLength
        
        for _ in 0..<levels {
            let triangleHeight = (sqrt(3) / 2) * sideLength
            let triangleTopPoint = CGPoint(x: center.x, y: center.y - triangleHeight / 2)
            let trianglePath = UIBezierPath()
            
            trianglePath.move(to: triangleTopPoint)
            trianglePath.addLine(to: CGPoint(x: triangleTopPoint.x - sideLength / 2, y: triangleTopPoint.y + triangleHeight))
            trianglePath.addLine(to: CGPoint(x: triangleTopPoint.x + sideLength / 2, y: triangleTopPoint.y + triangleHeight))
            trianglePath.close()
            
            // Draw the triangle
            UIColor.black.setStroke()
            trianglePath.stroke()
            
            UIColor.white.setFill()
            trianglePath.fill()
            
            // Calculate side length for the next triangle
            sideLength = sideLength * 0.7
        }
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
//        let squareSideLength = rect.width / sqrt(3)
        
        let squareSideLength: CGFloat = (sqrt(3) * rect.width) / (2 + sqrt(3))

        // Calculate square's origin point to center it in the triangle
        let squareOrigin = CGPoint(x: rect.midX - squareSideLength / 2, y: rect.maxY - squareSideLength)

        // Draw the square
        let squarePath = UIBezierPath(rect: CGRect(origin: squareOrigin, size: CGSize(width: squareSideLength, height: squareSideLength)))
        UIColor.black.setStroke() // You can adjust the color
        squarePath.stroke()
    }
}



