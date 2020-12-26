//
//  ViewController.swift
//  MyFirstIOSApp
//
//  Created by Brotecs on 25/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender : UIButton){
        
        let disctionary = ["😎" : "Cool" , "🥁" : "Drum", "🎭" : "Drama" , "😁" : "Happy"]
        
        
        //which button was tapped
        let selectedButton = sender
        
        if let wordToLookUp = selectedButton.titleLabel?.text{
            
            let meaning = disctionary[wordToLookUp]
            let alertController =  UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
    }
   


}

