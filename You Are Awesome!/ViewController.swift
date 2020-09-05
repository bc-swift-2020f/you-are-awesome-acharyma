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
    var imageNumber = 0
    var labelNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
        print("LOADED")
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        /*
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)

        imageNumber = imageNumber + 1
        if(imageNumber == 10){
            imageNumber = 0
        }
         */
        imageView.image = UIImage(named:"image\(Int.random(in:0...9))")
        
        
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        let fabulousMessage = "Fabulous? That's You!"
        let geniusMessage = "When the Genius Bar Needs Help, They Call You!"
        let messages = [awesomeMessage, greatMessage, bombMessage, geniusMessage, fabulousMessage]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        
        /*
        messageLabel.text = messages[labelNumber]
        labelNumber += 1
        if(labelNumber>messages.count-1){
            labelNumber=0
        }
         */
        
        /*
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
         */
        
    }
    

}

