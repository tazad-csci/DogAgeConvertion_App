//
//  ViewController.swift
//  Assignment_1
//
//  Created by Tamjid Azad on 1/31/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func buttonPressed()  {
        
        ageTextField.resignFirstResponder()
        
        if let age = ageTextField.text, !age.isEmpty {
            
            let dogAge:Int? = Int(ageTextField.text!)
            
            if dogAge == 1
            {
                humanAgeLabel.text = "Your dog is 15 in human years"
            }
            else if dogAge == 2
            {
                humanAgeLabel.text = "Your dog is 24 in human years"
            }
            else
            {
                humanAgeLabel.text = "Your dog is \(((( dogAge! - 2) * 5 ) + 29)) in human years"
            }
        }
        else
        {
            displayError("Please enter an age for your dog")
        }
    
        
    }
    
    
    func displayError(_ message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        present(alertController,animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}

