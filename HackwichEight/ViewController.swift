//
//  ViewController.swift
//  HackwichEight
//
//  Created by User on 3/9/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomNumberDisplay: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!
    
    //var currentValue: Int = 0
    var currentValue = 0

    var targetValue = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slider.value = 50
        
        
        //making it an Int because it makes it a float, but the current value is an integer; converting the float value, an number that's not an Int, into an Int.
        currentValue = Int (slider.value)
        
        //Int has an instance method called random
        //targetValue = Int.random(in: 0...100)
        
        //cal the function
        startNewRound()
        
        updateTargetLabel()
        
        //set image to slider
        let thumbImageNormal = UIImage(named: "Image-2")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    
    }
    
    
    func startNewRound () {
        targetValue = Int.random(in: 0...100)
        
        currentValue = Int (slider.value)
        
        updateTargetLabel()

        
    }
    
    func updateTargetLabel () {
        randomNumberDisplay.text = String (targetValue)
        
        
    }
    
    

    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print ("The value of the slider is: \(slider.value)")
        currentValue = Int((slider.value))
        
        
    }
    
    
    // the alert message
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
    
        let message = "The value is \(currentValue)" + "\n The Target Value is: \(targetValue)"
    
    let alert = UIAlertController(title: "Guess the Number Game", message: message , preferredStyle: .alert)
        
        //the dismiss button to close the alert message
    let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
    alert.addAction(action)
    
    present(alert, animated: true, completion: nil)
    
        
    startNewRound()
    
    
    
    
    }

}

