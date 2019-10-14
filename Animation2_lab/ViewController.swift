//
//  ViewController.swift
//  Animation2_lab
//
//  Created by EricM on 10/14/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var linearOutlet: UIView!
    @IBOutlet weak var easeInOutlet: UIView!
    @IBOutlet weak var easeOutOutlet: UIView!
    @IBOutlet weak var easeInOutOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func linear(_ sender: Any) {
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn , animations: {
            self.linearOutlet.alpha = 0
        })
    }
    @IBAction func easeIn(_ sender: Any) {
        UIView.animate(withDuration: 4, delay: 0, options: .curveEaseIn , animations: {
            self.easeInOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
    }
    @IBAction func easeOut(_ sender: Any) {
        UIView.animate(withDuration: 4, delay: 0, options: .curveEaseOut , animations: {
            self.easeOutOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
    }
    @IBAction func inAndOut(_ sender: Any) {
        UIView.animate(withDuration: 4, delay: 0, options: .curveEaseInOut , animations: {
            self.easeInOutOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
    }
    @IBAction func reset(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.linearOutlet.transform = CGAffineTransform.identity
            self.linearOutlet.alpha = 1
        })
        UIView.animate(withDuration: 1, animations: {
            self.easeInOutlet.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 1, animations: {
            self.easeOutOutlet.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 1, animations: {
            self.easeInOutOutlet.transform = CGAffineTransform.identity
        })
    }
    @IBAction func animate(_ sender: Any) {
        UIView.animate(withDuration: 2, animations: {
            self.linearOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            self.easeInOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseOut, animations: {
            self.easeOutOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseInOut, animations: {
            self.easeInOutOutlet.transform = CGAffineTransform(translationX: 0, y: 600)
        })
    }
    

}

