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
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
        print("LOADDED")
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        }
        else if messageLabel.text == greatMessage {
            messageLabel.text = bombMessage
            messageLabel.textColor = UIColor.orange
            imageView.image = UIImage(named: "image2")
        }
        else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
    }
    

}

