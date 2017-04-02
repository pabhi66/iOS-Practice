//
//  ViewController.swift
//  Click Counter
//
//  Created by Abhishek Prajapati on 3/28/17.
//  Copyright © 2017 abhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0;
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //create a variable
        let label = UILabel()
        label.frame = CGRect(x:150,y:150,width:60,height:60)
        label.text = "0"
        
        //add label to the view
        self.view.addSubview(label)
        self.label = label
        
        //create increment button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 100, height: 100)
        button.setTitle("increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        //create decrement button
        let buttonD = UIButton()
        buttonD.frame = CGRect(x: 150, y: 350, width: 100, height: 100)
        buttonD.setTitle("increment", for: .normal)
        buttonD.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(buttonD)
        
        //button on click
        buttonD.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount(){
        self.count -= 1;
        self.label.text = "\(self.count)"
    }

    


}

