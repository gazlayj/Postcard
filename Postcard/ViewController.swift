//
//  ViewController.swift
//  Postcard
//
//  Created by Justin Gazlay on 10/6/14.
//  Copyright (c) 2014 Justin Gazlay. All rights reserved.
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
        // set the messageLabel
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // set the nameLabel
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        //reset the enterNameTextField
        enterNameTextField.text = ""
        
        //reset the enterMessageTextField and dimsiss keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        //update the mailButton title
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

