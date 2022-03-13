//
//  ViewController.swift
//  HomeWork1
//
//  Created by u on 11.03.2022.
//

import UIKit

enum color {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    
    private var currentColor = color.green
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.4
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        button.setTitle("Press Me!", for: .normal)
        button.layer.cornerRadius = 10
        
    }
    
    override func viewWillLayoutSubviews() {
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2

    }
    
    @IBAction func pressTheButton() {
         
        if button.currentTitle?.lowercased() == "press me!" {
            button.setTitle("Next", for: .normal)
        }
        
        switch currentColor {
        case .red:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentColor = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentColor = .green
        case .green:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentColor = .red
        }
    }
    
}

