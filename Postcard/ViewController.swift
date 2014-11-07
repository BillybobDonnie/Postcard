//
//  ViewController.swift
//  Postcard
//
//  Created by Donald Firth on 2014-11-06.
//  Copyright (c) 2014 Donald Firth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when button pressed
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden=false
        nameLabel.text=enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        
    }
    
}

