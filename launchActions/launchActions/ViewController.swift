//
//  ViewController.swift
//  launchActions
//
//  Created by Abhishek Prajapati on 3/29/17.
//  Copyright © 2017 abhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //open image chooser activity
    @IBAction func experiment(){
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        self.present(imagePickerController, animated: true, completion: nil)

    }
    
    //open share menu
    @IBAction func openShareMenu(){
        let image = UIImage()
        let shareController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(shareController, animated: true, completion: nil)
    }
    
    //show alert
    @IBAction func showAlert(){
        let controller = UIAlertController()
        controller.title = "Alert Title"
        controller.message = "Alert Message"
        
        let action = UIAlertAction(title : "OK", style : UIAlertActionStyle.default){
            action in self.dismiss(animated: true, completion: nil)
        }
        
        let action2 = UIAlertAction(title : "Cancel", style : UIAlertActionStyle.default){
            action in self.dismiss(animated: true, completion: nil)
        }
        
        controller.addAction(action)
        controller.addAction(action2)
        
        self.present(controller, animated: true, completion: nil)
    }


}

