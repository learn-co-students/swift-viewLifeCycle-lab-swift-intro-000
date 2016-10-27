//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var middleLeftView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var middleRightView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var scoreLabel3: UILabel!
    @IBOutlet weak var scoreLabel4: UILabel!
    @IBOutlet weak var scoreLabel5: UILabel!
    @IBOutlet weak var scoreLabel6: UILabel!
    
    func viewSetup() {
        topLeftView.isHidden = true
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = true
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = true
        
        scoreLabel1.isHidden = true
        scoreLabel2.isHidden = true
        scoreLabel3.isHidden = true
        scoreLabel4.isHidden = true
        scoreLabel5.isHidden = true
        scoreLabel6.isHidden = true
        
    }
    
    
    //runs once when view appears on device
    override func viewDidLoad() {
        super.viewDidLoad()
        //run func to make views and labels disappear
        viewSetup()
    }
    

    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
    
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
