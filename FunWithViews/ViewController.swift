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
    

    //Create functions for each rolled number's view
    
    func oneRolledView() {
        topLeftView.isHidden = true
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = false
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = true
    }
    
    func twoRolledView() {
        topLeftView.isHidden = false
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = true
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = false
        
    }
    
    func threeRollView() {
        topLeftView.isHidden = false
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = false
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = false
    }
    
    func fourRollView() {
        topLeftView.isHidden = false
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = false
        middleView.isHidden = true
        topRightView.isHidden = false
        middleRightView.isHidden = true
        bottomRightView.isHidden = false
    }
    
    
    
    //Create a function which selects certain views to show based on the dice roll value.
    func viewSelector(number: Int) {
        switch number {
        case 1:
            oneRolledView()
        case 2:
            twoRolledView()
        case 3:
            threeRollView()
        case 4:
            fourRollView()
//        case 5:
//            
//        case 6:
            
        default:
            print("Something went wrong, try again frig u!.")
        }
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    //Func executed once the dice is tapped
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        //make randomDiceRoll a constant to use it as the argument in the viewSelector func.
        let rollNumber = randomDiceRoll()
        print(rollNumber)
        //Based on the randomDiceRoll value the specific view will be selected to present
        viewSelector(number: rollNumber)
    
    }
    
   
}


