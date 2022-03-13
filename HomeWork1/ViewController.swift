//
//  ViewController.swift
//  HomeWork1
//
//  Created by u on 11.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var button: UIButton!
    
    enum color {
        case Red
        case Yellow
        case Green
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        redLight.alpha = 0.4
        redLight.layer.cornerRadius = redLight.layer.frame.height / 2
        
        yellowLight.alpha = 0.4
        yellowLight.layer.cornerRadius = yellowLight.layer.frame.height / 2
        
        greenLight.alpha = 0.4
        greenLight.layer.cornerRadius = greenLight.layer.frame.height / 2
        
        button.setTitle("Press Me!", for: .normal)
        button.layer.cornerRadius = 10
    }
    
        var currentColor = color.Green
    
    @IBAction func pressTheButton() {
         
        switch currentColor {
        case .Red:
            yellowLight.alpha = 1
            redLight.alpha = 0.4
            currentColor = .Yellow
        case .Yellow:
            yellowLight.alpha = 0.4
            greenLight.alpha = 1
            currentColor = .Green
        case .Green:
            greenLight.alpha = 0.4
            redLight.alpha = 1
            currentColor = .Red
        }
    }
    
}

