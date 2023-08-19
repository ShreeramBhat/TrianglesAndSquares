//
//  ViewController.swift
//  TrianglesAndSquares
//
//  Created by Shreeram Bhat on 19/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var levels = 8

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let width = self.view.frame.width
//        self.addEquilateralTriangle(startPoint: CGPoint(x: 0, y: width), width: width)
//        let triangleHeight: CGFloat = (sqrt(3) / 2) * width
//        let diff = width - triangleHeight
//        self.addSquare(startPoint: CGPoint(x: width / 4, y: (triangleHeight/2) + diff), width: width/2)
        
//        let nestedShapesView = RecursiveNestedShapesView()
//        nestedShapesView.backgroundColor = .white
//        nestedShapesView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(nestedShapesView)
//
//        NSLayoutConstraint.activate([
//            nestedShapesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            nestedShapesView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            nestedShapesView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
//            nestedShapesView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1)
//        ])
        
//        let recursiveNestedShapesView = RecursiveNestedShapesView()
//        recursiveNestedShapesView.backgroundColor = .white
//        recursiveNestedShapesView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(recursiveNestedShapesView)
//
//        NSLayoutConstraint.activate([
//            recursiveNestedShapesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            recursiveNestedShapesView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            recursiveNestedShapesView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
//            recursiveNestedShapesView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8)
//        ])
        
//        let equilateralTriangleView = EquilateralTriangleView()
//        equilateralTriangleView.backgroundColor = .white
//        equilateralTriangleView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(equilateralTriangleView)
//        
//        NSLayoutConstraint.activate([
//            equilateralTriangleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            equilateralTriangleView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            equilateralTriangleView.widthAnchor.constraint(equalToConstant: 200),
//            equilateralTriangleView.heightAnchor.constraint(equalTo: equilateralTriangleView.widthAnchor, multiplier: sqrt(3) / 2)
//        ])
//
        

//        let squareView = SquareView()
//        squareView.backgroundColor = .white
////        squareView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(squareView)
//
//        let length: CGFloat = (sqrt(3) * width) / (2 + sqrt(3))
//        let squareOrigin = CGPoint(x: self.view.frame.midX - length / 2, y: self.view.frame.maxY - length)
//
//        squareView.frame.origin = squareOrigin
        
//        NSLayoutConstraint.activate([
////            squareView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
////            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
////            squareView.leadingAnchor.constraint(equalTo: triangleWithSquareView.leadingAnchor, constant: squareOrigin.x),
//
//            squareView.widthAnchor.constraint(equalToConstant: length),
//            squareView.heightAnchor.constraint(equalTo: squareView.widthAnchor)
//        ])
        
        let width: CGFloat = 200
//        self.addTriangleWithSquareView(width: width)
        
        let contentView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: width, height: width)))
        contentView.backgroundColor = .clear
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentView.widthAnchor.constraint(equalToConstant: width),
            contentView.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: sqrt(3) / 2)
        ])
        
        self.addNestedTriangleWithSquareView(view: contentView, levels: self.levels, width: width)
    }
    
    private func addNestedTriangleWithSquareView(view: UIView, levels: Int, width: CGFloat) {
        var view = view
        var width = width
        for _ in 0..<levels/2 {
            view = self.addTriangleWithSquareView(view: view, width: width)
            width = (sqrt(3) * width) / (2 + sqrt(3))
        }
    }
    
    private func addTriangleWithSquareView(view: UIView, width: CGFloat) -> UIView {
        let triangleWithSquareView = TriangleWithSquareView()
        triangleWithSquareView.backgroundColor = .clear
        triangleWithSquareView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(triangleWithSquareView)

        NSLayoutConstraint.activate([
            triangleWithSquareView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            triangleWithSquareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            triangleWithSquareView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            triangleWithSquareView.widthAnchor.constraint(equalToConstant: width),
            triangleWithSquareView.heightAnchor.constraint(equalTo: triangleWithSquareView.widthAnchor, multiplier: sqrt(3) / 2)
        ])
        
        return triangleWithSquareView
    }
    
//    private func addEquilateralTriangle(startPoint: CGPoint, width: CGFloat) {
//        let path = CGMutablePath()
//        path.move(to: startPoint)
//        let triangleHeight: CGFloat = (sqrt(3) / 2) * width
//        path.addLine(to: CGPoint(x: width/2, y: startPoint.y - triangleHeight))
//        path.addLine(to: CGPoint(x: width, y: startPoint.y))
//        path.addLine(to: startPoint)
//
//        self.addShape(for: path)
//    }
//
//    private func addSquare(startPoint: CGPoint, width: CGFloat) {
//        let path = CGMutablePath()
//        path.move(to: startPoint)
//        path.addLine(to: CGPoint(x: startPoint.x + width, y: startPoint.y))
//        path.addLine(to: CGPoint(x: startPoint.x + width, y: startPoint.y + width))
//        path.addLine(to: CGPoint(x: startPoint.x, y: startPoint.y + width))
//        path.addLine(to: startPoint)
//
//        self.addShape(for: path)
//    }
//
//    private func addShape(for path: CGPath) {
//        let shape = CAShapeLayer()
//        shape.path = path
//        shape.lineWidth = 1
//        shape.strokeColor = UIColor.black.cgColor
//        shape.fillColor = UIColor.white.cgColor
//
//        self.view.layer.addSublayer(shape)
//    }

}

