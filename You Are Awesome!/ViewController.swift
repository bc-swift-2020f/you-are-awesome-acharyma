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
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
        print("LOADED")
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        
        
        
        
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        let fabulousMessage = "Fabulous? That's You!"
        let geniusMessage = "When the Genius Bar Needs Help, They Call You!"
        let messages = [awesomeMessage, greatMessage, bombMessage, geniusMessage, fabulousMessage]
        var newMessageNumber:Int
        repeat{
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber:Int
        repeat{
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while newImageNumber == imageNumber
        
        imageNumber = newImageNumber
        
        imageView.image = UIImage(named:"image\(imageNumber)")
        
        
        
    }
    

}

