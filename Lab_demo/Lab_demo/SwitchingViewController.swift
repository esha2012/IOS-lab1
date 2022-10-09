//
//  SwitchingViewController.swift
//  Lab_demo
//
//  Created by esha  on 2022-10-08.
//

import UIKit

class SwitchingViewController: UIViewController {

    var yellow:YellowViewController!
    var blue:BlueViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         blue =
            storyboard?.instantiateViewController(withIdentifier: "Blue")
            as! BlueViewController

            blue.view.frame = view.frame
            switchViewController(from: nil, to: blue)
    }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
    private func switchViewController(from fr:UIViewController?,
                                          to toi:UIViewController?) {
            if fr != nil {
                fr!.willMove(toParent: nil)
                fr!.view.removeFromSuperview()
                fr!.removeFromParent()
            }
            
            if toi != nil {
                self.addChild(toi!)
                self.view.insertSubview(toi!.view, at: 0)
                toi!.didMove(toParent: self)
            }
        }
    
    @IBAction func switch_view_toolbar_btn(_ sender: UIBarButtonItem) {
        
        if yellow?.view.superview == nil {
                    if yellow == nil {
                        yellow =
                            storyboard?.instantiateViewController(withIdentifier: "Yellow")
                            as? YellowViewController
                    }
                } else if blue?.view.superview == nil {
                    if blue == nil {
                        blue =
                            storyboard?.instantiateViewController(withIdentifier: "Blue")
                            as? BlueViewController
                    }
                }

            UIView.beginAnimations("View Flip", context: nil)
               UIView.setAnimationDuration(0.4)
               UIView.setAnimationCurve(.easeInOut)
        
                // Switch view controllers
                if blue != nil
                    && blue!.view.superview != nil {
                    yellow.view.frame = view.frame
                    switchViewController(from: blue,
                                         to: yellow)
                } else {
                    blue.view.frame = view.frame
                    switchViewController(from: yellow,
                                         to: blue)
                }
        
    }
    
}
