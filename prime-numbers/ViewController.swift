//
//  ViewController.swift
//  prime-numbers
//
//  Created by Paula Lee on 4/19/17.
//  Copyright © 2017 Paula Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberInput: UITextField!
    
    
    @IBAction func checkNumberButton(_ sender: Any) {
        
        if let userInputString = numberInput.text {
            let userInputInteger = Int(userInputString)
            
            if let num = userInputInteger {
                if num == 2 || num == 3 || num == 5 {
                    primeOutput.text = "\(num) is a prime!"
                } else if num == 1 || num % 2 == 0 || num % 3 == 0 || num % 5 == 0 {
                    primeOutput.text = "\(num) is not a prime"
                } else {
                    primeOutput.text = "\(num) is a prime!"
                }
            } else {
                primeOutput.text = "Please enter a positive whole number"
            }
        }
        
        
        
    }
    
    @IBOutlet var primeOutput: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

