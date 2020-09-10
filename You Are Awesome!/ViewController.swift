//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Manogya Acharya on 9/2/20.
//  Copyright © 2020 Manogya Acharya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 10
    let totalNumberOfSounds = 6
    var soundNumber = -1
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
        print("LOADED")
    }
    
    func playSound(soundName: String){
        if let sound = NSDataAsset(name: soundName){
            //if not nil
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch{
                print("😡 ERROR:\(error.localizedDescription) Couldn't initialize AVAudioPlayer")
            }
            
        }
        else{
            print("😡 ERROR! Couldn't read data from file sound0")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int{
        var newNumber: Int
        
        repeat{
            newNumber = Int.random(in: 0...upperBounds-1)
        } while originalNumber == newNumber
        
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        
        
        
        
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        let fabulousMessage = "Fabulous? That's You!"
        let geniusMessage = "When the Genius Bar Needs Help, They Call You!"
        let messages = [awesomeMessage, greatMessage, bombMessage, geniusMessage, fabulousMessage]
        
        
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count)
        messageLabel.text = messages[messageNumber]
        
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages)
        imageView.image = UIImage(named:"image\(imageNumber)")
                
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds)
        let soundText = "sound\(soundNumber)"
        
        
        playSound(soundName: soundText)
        
    }
}

