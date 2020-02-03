//
//  ViewController.swift
//  Color Mix
//
//  Created by WoLf, ChRiStOpHeR (LYHS) on 1/31/20.
//  Copyright © 2020 Ava Wilson . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    let onColor = UIColor(red: 0.05, green: 0.50, blue: 0.55, alpha: 1)
    let offColor = UIColor(red: 0.50, green: 0.05, blue: 0.55, alpha: 1)
    let textPurple = "purple"
    let textCyan = "Cyan"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let color = UIColor(red: 0.05, green: 0.50, blue: 0.55, alpha: 1)
        colorView.backgroundColor = color
        // Do any additional setup after loading the view.
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = onColor
        } else {
            colorView.backgroundColor = offColor
        }
    }
    
   
    }


