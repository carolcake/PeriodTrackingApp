//
//  ViewController.swift
//  ReallyCoolProject
//
//  Created by Scholar on 6/22/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton)
    {
        // if the textfield has text then assign it to the new title constant
        if let userName = textField.text
        {
            Question.text = userName
        }
    }
    
}

