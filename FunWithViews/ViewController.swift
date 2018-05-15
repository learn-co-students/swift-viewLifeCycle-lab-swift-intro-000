//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
  
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dieBackground.layer.cornerRadius = 10
        die1.isHidden = true
        die1.layer.cornerRadius = 5
        die2.isHidden = true
        die2.layer.cornerRadius = 5
        die3.isHidden = true
        die3.layer.cornerRadius = 5
        die4.isHidden = true
        die4.layer.cornerRadius = 5
        die5.isHidden = true
        die5.layer.cornerRadius = 5
        die6.isHidden = true
        die6.layer.cornerRadius = 5
        die7.isHidden = true
        die7.layer.cornerRadius = 5
        
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject){
        
        if randomDiceRoll() == 1 {
            answer1()
        }else if randomDiceRoll() == 2 {
            answer2()
        }else if randomDiceRoll() == 3 {
            answer3()
        }else if randomDiceRoll() == 4 {
            answer4()
        }else if randomDiceRoll() == 5 {
            answer5()
        }else if randomDiceRoll() == 6 {
            answer6()
        }
        
    }
  
    
    func answer1() {
        score1Label.text = "1"
        
        score1.isHidden = false
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
        
        die4.isHidden = false
        die1.isHidden = true
        die3.isHidden = true
        die6.isHidden = true
        die2.isHidden = true
        die5.isHidden = true
        die7.isHidden = true
        
        print("Answer 1 Ininitiated")
    }
    
    func answer2() {
        score2Label.text = "2"
        
        score2.isHidden = false
        score1.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
        
        die5.isHidden = false
        die3.isHidden = false
        die1.isHidden = true
        die4.isHidden = true
        die6.isHidden = true
        die2.isHidden = true
        die7.isHidden = true
        
        print("Answer 2 Ininitiated")
    }
    func answer3() {
        score3Label.text = "3"
        
        score3.isHidden = false
        score1.isHidden = true
        score2.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
        
                 die5.isHidden = false
                 die4.isHidden = false
                 die3.isHidden = false
        die1.isHidden = true
        die6.isHidden = true
        die2.isHidden = true
        die7.isHidden = true
        
        print("Answer 3 Ininitiated")
    }
    
    func answer4() {
        score4Label.text = "4"
        
        score4.isHidden = false
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
        
                 die1.isHidden = false
                 die5.isHidden = false
                 die3.isHidden = false
                 die7.isHidden = false
        die4.isHidden = true
        die6.isHidden = true
        die2.isHidden = true
        
        print("Answer 4 Ininitiated")
    }
    
    func answer5() {
        score5Label.text = "5"
        
        score5.isHidden = false
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score6.isHidden = true
        
                 die1.isHidden = false
                 die4.isHidden = false
                 die3.isHidden = false
                 die5.isHidden = false
                 die7.isHidden = false
        die2.isHidden = true
        die6.isHidden = true
        
        print("Answer 5 Ininitiated")
    }
    
    func answer6() {
        score6Label.text = "6"
        
        score6.isHidden = false
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        
                 die1.isHidden = false
                 die2.isHidden = false
                 die3.isHidden = false
                 die6.isHidden = false
                 die2.isHidden = false
                 die5.isHidden = false
        die7.isHidden = false
        die4.isHidden = true
        
        print("Answer 6 Ininitiated")
    }
    
        
        
    
    @IBOutlet weak var die2: UIView!
    @IBOutlet weak var die1: UIView!
    @IBOutlet weak var die3: UIView!
    @IBOutlet weak var die4: UIView!
    @IBOutlet weak var die5: UIView!
    @IBOutlet weak var die6: UIView!
    @IBOutlet weak var die7: UIView!
    
    @IBOutlet weak var score1: UIView!
    @IBOutlet weak var score2: UIView!
    @IBOutlet weak var score3: UIView!
    @IBOutlet weak var score4: UIView!
    @IBOutlet weak var score5: UIView!
    @IBOutlet weak var score6: UIView!
    @IBOutlet weak var dieBackground: UIView!
    
    @IBOutlet weak var score1Label: UILabel!
    @IBOutlet weak var score2Label: UILabel!
    @IBOutlet weak var score3Label: UILabel!
    @IBOutlet weak var score4Label: UILabel!
    @IBOutlet weak var score5Label: UILabel!
    @IBOutlet weak var score6Label: UILabel!
    
}



