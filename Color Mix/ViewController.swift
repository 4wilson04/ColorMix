//
//  ViewController.swift
//  Color Mix
//
//  Created by WoLf, ChRiStOpHeR (LYHS) on 1/31/20.
//  Copyright © 2020 Ava Wilson . All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }

    @IBAction func switchChanged(_ sender: UISwitch){
        setColor()
        setText()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        setColor()
        setText()
    }
    
    
    func setColor() {
        let red: CGFloat = redSwitch.isOn ?
            CGFloat(redSlider.value) : 0
        let green: CGFloat = greenSwitch.isOn ?
            CGFloat(greenSlider.value) : 0
        let blue: CGFloat = blueSwitch.isOn ?
            CGFloat(blueSlider.value) : 0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        self.view.backgroundColor = color
    }
    
    func setText() {
        let red = redSwitch.isOn ?
            Int(redSlider.value * 100) : 0
        let blue = blueSwitch.isOn ?
            Int(blueSlider.value * 100) : 0
        let green = greenSwitch.isOn ?
            Int(greenSlider.value * 100) : 0
        
        redLabel.text = "\(red)%"
        blueLabel.text = "\(blue)%"
        greenLabel.text = "\(green)%"
    }
}

