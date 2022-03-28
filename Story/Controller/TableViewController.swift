//
//  TableViewController.swift
//  Story
//
//  Created by Sara on 3/27/22.
//

import Foundation



import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    var messages : [Message] = [
        Message(sender: "Sara", body: "Hi"),
        Message(sender: "Who", body: "Hello!"),
        Message(sender: "Sara", body: "What's up")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
}

extension TableViewController : UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        cell.textLabel?.text = messages[indexPath.row].body
        return cell
    }
    
}

extension TableViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}


