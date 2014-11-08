//
//  ViewController.swift
//  Postcard
//
//  Created by Samuel Hooker on 7/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        
        if enterNameTextField.text == ""{
            enterNameTextField.backgroundColor = UIColor.redColor()
            enterNameTextField.placeholder = "You need a name to send"
        }
        else{
            enterNameTextField.backgroundColor = UIColor.clearColor()
            enterNameTextField.placeholder = "Name" //general comment
        }
        
        if enterMessageTextField.text == ""{
            enterMessageTextField.backgroundColor = UIColor.redColor()
            enterMessageTextField.placeholder = "You need a message to send"
        }
        else{
            enterMessageTextField.backgroundColor = UIColor.clearColor()
            enterMessageTextField.placeholder = "Message"

        }
        if enterMessageTextField != "" && enterNameTextField != ""{
            mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
            messageLabel.text = enterMessageTextField.text
            messageLabel.hidden = false
            enterMessageTextField.text = ""
            enterMessageTextField.resignFirstResponder() //function closes keyboard
        }
        
        
    }

}

