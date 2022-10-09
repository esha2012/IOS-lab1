//
//  YellowViewController.swift
//  Lab_demo
//
//  Created by esha  on 2022-10-08.
//

import UIKit

class YellowViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Yellow_button_pressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Yellow View Button is Pressed here",
                                      message: "You pressed the button which is on the yellow view",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes", style: .default,
                                   handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        
        
    }
}

