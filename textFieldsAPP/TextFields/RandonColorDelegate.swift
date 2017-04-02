//
//  RandonColorDelegate.swift
//  TextFields
//
//  Created by Abhishek Prajapati on 4/1/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorDelegate: NSObject, UITextFieldDelegate{
    
    let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
    
    
    //return random color
    func randomColor() -> UIColor{
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // @TODO: Set the color of your text here!
         textField.textColor = randomColor()
        return true
    }
}
