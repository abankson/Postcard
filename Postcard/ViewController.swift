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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPostcardButtonPress(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTF.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTF.text = ""
        //messageLabel.text = "Hello, World"
        
        enterMessageTF.resignFirstResponder()
        sendPostcardButton.setTitle("Postcard Sent", forState: UIControlState.Normal)
    }

}

