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
        
        let width: CGFloat = 200
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
            triangleWithSquareView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            triangleWithSquareView.widthAnchor.constraint(equalToConstant: width),
            triangleWithSquareView.heightAnchor.constraint(equalTo: triangleWithSquareView.widthAnchor, multiplier: sqrt(3) / 2)
        ])
        
        return triangleWithSquareView
    }
    
}

