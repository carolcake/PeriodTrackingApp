//
//  ViewController.swift
//  EmotionApp
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imageViewEmotion: UIImageView!
    var happyArray = ["You go, girl!", "I love that for you!", "Yass queen!", "Yass slay!", "Yaaasss slay, Queen", "Sleigh"]
    var angryArray = ["Take a few deep breaths", "Sometmes life happens", "That's understandable", "Just keep slaying", "People suck"]
    var sadArray = ["Why don't you do something for yourself?", "Treat yourself! ☕️", "You are loved!", "Get over it - Enalicia"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func happyButtonPressed(_ sender: UIButton)
    {
        let randomNum = Int.random(in: 0..<happyArray.count)
        messageLabel.text = happyArray[randomNum]
        imageViewEmotion.image = UIImage(named: "smiley")
    }
    
    @IBAction func angryButtonPressed(_ sender: UIButton)
    {
        let randomNum = Int.random(in: 0..<angryArray.count)
        messageLabel.text = angryArray[randomNum]
        imageViewEmotion.image = UIImage(named: "angry")
    }
    
    @IBAction func sadButtonPressed(_ sender: Any)
    {
        let randomNum = Int.random(in: 0..<sadArray.count)
        messageLabel.text = sadArray[randomNum]
        imageViewEmotion.image = UIImage(named: "sad")
    }
}

