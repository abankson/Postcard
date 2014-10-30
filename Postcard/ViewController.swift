//
//  ViewController.swift
//  Postcard
//
//  Created by Adam Bankson on 10/24/14.
//  Copyright (c) 2014 Adam Bankson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTF: UITextField!
    @IBOutlet weak var enterMessageTF: UITextField!
    @IBOutlet weak var sendPostcardButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPostcardButtonPress(sender: UIButton) {
        //Message Label Activation
        messageLabel.hidden = false
        messageLabel.text = enterMessageTF.text
        messageLabel.textColor = UIColor.redColor()
        
        //Name Label Activation
        nameLabel.hidden = false
        nameLabel.text = enterNameTF.text
        nameLabel.textColor = UIColor.blueColor()
        
        //Clear Input Fields
        enterMessageTF.text = ""
        enterNameTF.text = ""
        
        enterMessageTF.resignFirstResponder()
        enterNameTF.resignFirstResponder()
        sendPostcardButton.setTitle("Postcard Sent", forState: UIControlState.Normal)
    }

}

