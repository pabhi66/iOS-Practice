//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - RollViewController: UIViewController

class RollViewController: UIViewController {
    
    // MARK: Generate Dice Value
    
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // MARK: Actions
    
    @IBAction func rollTheDice() {
        
        /** 
         //Go from one activity to another without segue
 
        //create a variable for the activity you want to go to (i.e. in this you go to DiceViewController)
        var controller: DiceViewController
        
        //instantiate the controller with it's story board identifier and check its a DiceViewController using as!
        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        
        //instantiate DiceViewController's firstValue and secnodValue
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        //present the controller
        present(controller, animated: true, completion: nil)
 
        **/
        
        /**
        //go from one controller to another using segue
        //first connect the the controller in story bord (model) then name the segue id to something
        //however using this does not pass in the value
        performSegue(withIdentifier: "rollDice", sender: self)
 
        **/
        
        /** **/
        //use prepareForSegue(_:sender:) or prepare(_:sender:) to pass in data and use segue
        //just add prepare function below to pass in data
        performSegue(withIdentifier: "rollDice", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DiceViewController
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
        
    }
    
    
}

