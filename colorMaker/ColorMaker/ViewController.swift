//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!
    @IBOutlet weak var slider: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!


    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
        
        //hide sliders
        disableSLiders()
        
    }
    
    // MARK: Actions
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: CGFloat = self.redControl.isOn ? 1 : 0
        let g: CGFloat = self.greenControl.isOn ? 1 : 0
        let b: CGFloat = self.blueControl.isOn ? 1 : 0
                
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    func disableSLiders(){
        self.redSlider.isHidden = true;
        self.greenSlider.isHidden = true;
        self.blueSlider.isHidden = true;
    }
    
    
    @IBAction func useSlider(_ sender: Any) {
        if self.slider == nil{
            return
        }
        
        if self.slider.isOn{
            redControl.isHidden = true;
            greenControl.isHidden = true;
            blueControl.isHidden = true;
            self.redSlider.isHidden = false;
            self.greenSlider.isHidden = false;
            self.blueSlider.isHidden = false;
        }else{
            disableSLiders()
            redControl.isHidden = false;
            greenControl.isHidden = false;
            blueControl.isHidden = false;
        }
    }
    
    @IBAction func changeColorComponent2(_ sender: AnyObject) {
        
        let r = self.redSlider.value
        let g = self.greenSlider.value
        let b = self.blueSlider.value
        
//        let r: CGFloat = CGFloat(self.redControl.value)
//        let g: CGFloat = CGFloat(self.greenControl.value)
//        let b: CGFloat = CGFloat(self.blueControl.value)
        
        colorView.backgroundColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1)
    }
    
    
}

