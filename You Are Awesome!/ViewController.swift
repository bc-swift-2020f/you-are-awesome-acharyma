//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Manogya Acharya on 9/2/20.
//  Copyright © 2020 Manogya Acharya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("👍 loaded")
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Hello There"
        messageLabel.textColor = UIColor.orange
        print("General Kenobi ✩")
    }
    @IBAction func changeMessageAgainPressed(_ sender: UIButton) {
        messageLabel.text = "Inspire Others!"
        messageLabel.textColor = UIColor.blue
        
    }
    

}

