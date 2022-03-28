//
//  ViewController.swift
//  Story
//
//  Created by Sara on 3/18/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }

    

    @IBAction func locationPressed(_ sender: UIButton) {
        
      
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        }else {
            textField.placeholder = "Type something ..."
            return false
        }
    }
    
}

