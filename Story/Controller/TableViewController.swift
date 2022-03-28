//
//  TableViewController.swift
//  Story
//
//  Created by Sara on 3/27/22.
//

import Foundation



import UIKit

class TableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
}
