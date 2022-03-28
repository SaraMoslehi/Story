//
//  SampleTableViewController.swift
//  Story
//
//  Created by Sara on 3/28/22.
//

import Foundation



import UIKit

class SampleTableViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    var messages : [Message] = [
        Message(sender: "Sara", body: "Hi"),
        Message(sender: "Who", body: "Hello!"),
        Message(sender: "Sara", body: "gerade wurde ein Jobangebot veröffentlicht, das Ihrem Anforderungsprofil entspricht.")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        TableView.dataSource = self
        
        TableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeView(_ sender: UIButton) {
        print("closeeee")
        self.dismiss(animated: false, completion: nil)
    }
    
}

extension SampleTableViewController : UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.lable.text = messages[indexPath.row].body
        
        
        return cell
    }
    
}
