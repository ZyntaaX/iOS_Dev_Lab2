//
//  SkillsViewController.swift
//  iOS_Dev_Lab2
//
//  Created by user162693 on 2019-12-03.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {


    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var yConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        closeButton.layer.cornerRadius = closeButton.frame.height/2
        myView.layer.cornerRadius = myView.frame.width / 2
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        yConstraint.constant -= 200
        UIView.animate(withDuration: 3, delay: 1, options: [.curveEaseInOut, .preferredFramesPerSecond60], animations: {
            self.myView.superview?.layoutIfNeeded()
            self.myView.backgroundColor = UIColor.green
        }) { (completed) in
            if completed {
                self.advancedAnimation()
            }
            else {
                print("Animation was cancelled")
            }
                
        }
    }
    
    func advancedAnimation() {
        let startPosition = myView.center
        UIView.animateKeyframes(withDuration: 4, delay: 0.5, options: [.repeat, .autoreverse], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 2) {
                self.myView.backgroundColor = UIColor.blue
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.2) {
                self.myView.center = self.view.center
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.3) {
                //self.myView.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(scaleX: 2, y: 2))
                self.myView.layer.cornerRadius = 0
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.2) {
                self.myView.center = startPosition
                self.myView.transform = CGAffineTransform.identity
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.2) {
                self.myView.frame = CGRect(origin: CGPoint(), size: CGSize(width: 200, height: 200))
                self.myView.layer.cornerRadius = self.myView.frame.width / 4
                self.myView.backgroundColor = UIColor.systemPink
                self.myView.center = startPosition
            }
        }) { (completed) in
            if completed {
                print("Animation was completed!")
            }
            else {
                print("Animation was cancelled")
            }
        }
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
}
