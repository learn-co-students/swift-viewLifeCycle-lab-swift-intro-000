//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uLeft: UIView!
    @IBOutlet weak var mLeft: UIView!
    @IBOutlet weak var bLeft: UIView!
    @IBOutlet weak var mMid: UIView!
    @IBOutlet weak var uRight: UIView!
    @IBOutlet weak var mRight: UIView!
    @IBOutlet weak var bRight: UIView!
    
    @IBOutlet weak var onePast: UIView!
    @IBOutlet weak var twoPast: UIView!
    @IBOutlet weak var threePast: UIView!
    @IBOutlet weak var fourPast: UIView!
    @IBOutlet weak var fivePast: UIView!
    @IBOutlet weak var sixPast: UIView!
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    
    @IBOutlet weak var rollBaby: UIButton!
    
   
    //rearange die blocks
    func rearrangeDie(roll: Int){
        
        if roll == 1{
            mMid.isHidden = false
            uLeft.isHidden = true
            mLeft.isHidden = true
            bLeft.isHidden = true
            uRight.isHidden = true
            mRight.isHidden = true
            bRight.isHidden = true
        }else if roll == 2{
            mLeft.isHidden = false
            mRight.isHidden = false
            uLeft.isHidden = true
            bLeft.isHidden = true
            mMid.isHidden = true
            uRight.isHidden = true
            bRight.isHidden = true
        }else if roll == 3{
            uLeft.isHidden = false
            mMid.isHidden = false
            bRight.isHidden = false
            mLeft.isHidden = true
            bLeft.isHidden = true
            uRight.isHidden = true
            mRight.isHidden = true
        }else if roll == 4{
            uLeft.isHidden = false
            bLeft.isHidden = false
            uRight.isHidden = false
            bRight.isHidden = false
            mLeft.isHidden = true
            mMid.isHidden = true
            mRight.isHidden = true

        }else if roll == 5{
            uLeft.isHidden = false
            bLeft.isHidden = false
            uRight.isHidden = false
            bRight.isHidden = false
            mMid.isHidden = false
            mLeft.isHidden = true
            mRight.isHidden = true
        }else if roll == 6{
            uLeft.isHidden = false
            bLeft.isHidden = false
            uRight.isHidden = false
            bRight.isHidden = false
            mLeft.isHidden = false
            mRight.isHidden = false
            mMid.isHidden = true
        }
    updateScore(score: roll)
    }
    //update score
    func updateScore(score: Int){
    if onePast.isHidden{
    onePast.isHidden = false
    oneLabel.text = String(score)
    }else if twoPast.isHidden{
        twoPast.isHidden = false
        twoLabel.text = String(score)
    }else if threePast.isHidden{
        threePast.isHidden = false
        threeLabel.text = String(score)
    }else if fourPast.isHidden{
        fourLabel.text = String(score)
        fourPast.isHidden = false
    }else if fivePast.isHidden{
        fivePast.isHidden = false
        fiveLabel.text = String(score)
    }else if sixPast.isHidden{
        sixPast.isHidden = false
        sixLabel.text = String(score)
        }
    
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        uLeft.isHidden = true
        mLeft.isHidden = true
        bLeft.isHidden = true
        mMid.isHidden = true
        uRight.isHidden = true
        mRight.isHidden = true
        bRight.isHidden = true
        
        onePast.isHidden = true
        twoPast.isHidden = true
        threePast.isHidden = true
        fourPast.isHidden = true
        fivePast.isHidden = true
        sixPast.isHidden = true
    }
   
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        rearrangeDie(roll: randomDiceRoll())
        
        
            
        
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
   

}
