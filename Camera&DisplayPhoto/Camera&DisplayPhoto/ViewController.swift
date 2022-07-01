//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    var imagePicker = UIImagePickerController()

    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }

    @IBAction func choosePhotoTapped(_ sender: Any)
    {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
}

