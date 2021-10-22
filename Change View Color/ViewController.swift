//
//  ViewController.swift
//  Change View Color
//
//  Created by Denis on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redLabel.text = String(round(redSlider.value * 100) / 100)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    @IBAction func greenSliderAction(_ sender: Any) {
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    @IBAction func blueSliderAction(_ sender: Any) {
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    
    
}

