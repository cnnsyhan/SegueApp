//
//  ViewController.swift
//  SegueApp
//
//  Created by Can Seyhan on 11/1/20.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var nameLabel: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameLabel.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
        
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameLabel.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as
            let destinationVC = segue.destination as! SeccondViewController
            destinationVC.myName = userName
        }
    }
    
}

