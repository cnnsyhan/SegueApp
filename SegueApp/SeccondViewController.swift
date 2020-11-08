//
//  SeccondViewController.swift
//  SegueApp
//
//  Created by Can Seyhan on 11/1/20.
//

import UIKit

class SeccondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mySeccondViewLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName
        
    }
    


}
