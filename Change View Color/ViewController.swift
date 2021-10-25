//
//  ViewController.swift
//  Change View Color
//
//  Created by Denis on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
   
  
    @IBOutlet var colorView: UIView!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        colorView.layer.cornerRadius = 15
        
        changeColor()
    }
    
    func changeColor(){
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    @IBAction func moveSliders() {
        
        changeColor()
    }
    
    
    
    
    
    
}

