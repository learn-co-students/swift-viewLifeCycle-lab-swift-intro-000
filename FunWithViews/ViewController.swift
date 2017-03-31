//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        first.isHidden = true
        second.isHidden = true
        third.isHidden = true
        fourth.isHidden = true
        fifth.isHidden = true
        sixth.isHidden = true
        leftTop.isHidden = true
        leftMiddle.isHidden = true
        leftBottom.isHidden = true
        centered.isHidden = true
        rightTop.isHidden = true
        rightMiddle.isHidden = true
        rightBottom.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        leftTop.isHidden = true
        leftMiddle.isHidden = true
        leftBottom.isHidden = true
        centered.isHidden = true
        rightTop.isHidden = true
        rightMiddle.isHidden = true
        rightBottom.isHidden = true
        
        let score = randomDiceRoll()
        
        updateLabelWithRoll(roll: score)
        
        rearrangeDie(roll: score)
        
        
    }
    
    @IBOutlet weak var leftTop: UIView!
    @IBOutlet weak var leftMiddle: UIView!
    @IBOutlet weak var leftBottom: UIView!
    @IBOutlet weak var centered: UIView!
    @IBOutlet weak var rightTop: UIView!
    @IBOutlet weak var rightMiddle: UIView!
    @IBOutlet weak var rightBottom: UIView!
    
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var fourth: UILabel!
    @IBOutlet weak var fifth: UILabel!
    @IBOutlet weak var sixth: UILabel!
    
    func rearrangeDie(roll: Int) {
        
        let diceScore = roll
        
        if diceScore == 1 {
            centered.isHidden = false
        } else if diceScore == 2 {
            leftTop.isHidden = false
            rightBottom.isHidden = false
        } else if diceScore == 3 {
            leftTop.isHidden = false
            rightBottom.isHidden = false
            centered.isHidden = false
        } else if diceScore == 4 {
            leftTop.isHidden = false
            rightBottom.isHidden = false
            leftBottom.isHidden = false
            rightTop.isHidden = false
        } else if diceScore == 5 {
            leftTop.isHidden = false
            rightBottom.isHidden = false
            leftBottom.isHidden = false
            rightTop.isHidden = false
            centered.isHidden = false
        } else if diceScore == 6 {
            leftTop.isHidden = false
            rightBottom.isHidden = false
            leftBottom.isHidden = false
            rightTop.isHidden = false
            rightMiddle.isHidden = false
            leftMiddle.isHidden = false
        }




        
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if first.isHidden {
            first.text = diceScore
            first.isHidden = false
        } else if second.isHidden {
            second.text = diceScore
            second.isHidden = false
        } else if third.isHidden {
            third.text = diceScore
            third.isHidden = false
        } else if fourth.isHidden {
            fourth.text = diceScore
            fourth.isHidden = false
        } else if fifth.isHidden {
            fifth.text = diceScore
            fifth.isHidden = false
        } else if sixth.isHidden {
            sixth.text = diceScore
            sixth.isHidden = false
        } else {
            first.text = diceScore
            second.isHidden = true
            third.isHidden = true
            fourth.isHidden = true
            fifth.isHidden = true
            sixth.isHidden = true
        }



        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
