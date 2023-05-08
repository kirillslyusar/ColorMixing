//
//  ViewController.swift
//  ColorMixing
//
//  Created by Кирилл Слюсарь on 03.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var greenSlader: UISlider!
    @IBOutlet weak var yellowSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        greenLabel.text = string(from: greenSlader)
        yellowLabel.text = string(from: yellowSlider)
        blueLabel.text = string(from: blueSlider)
        
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case greenLabel:
            greenLabel.text = string(from: greenSlader)
        case yellowLabel:
            yellowLabel.text = string(from: yellowSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
    
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            green: CGFloat(greenSlader.value),
            yellow: CGFloat(yellowSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) ->
    String {
        String(format: "%.2f", slider.value)
    }
}

