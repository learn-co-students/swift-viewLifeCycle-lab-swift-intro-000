//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view5: UIView!
    @IBOutlet var view6: UIView!
    @IBOutlet var view7: UIView!
    @IBOutlet var view8: UIView!
    @IBOutlet var view9: UIView!

    @IBOutlet var diceView1: UIView!
    @IBOutlet var diceView2: UIView!
    @IBOutlet var diceView3: UIView!
    @IBOutlet var diceView4: UIView!
    @IBOutlet var diceView5: UIView!
    @IBOutlet var diceView6: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view8.isHidden = true
        view9.isHidden = true
        
        diceView1.isHidden = true
        diceView2.isHidden = true
        diceView3.isHidden = true
        diceView4.isHidden = true
        diceView5.isHidden = true
        diceView6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        randomDiceRoll()
    }
    
    var diceroll: Int = 0
    
    func randomDiceRoll() -> Int {
        diceroll = Int(arc4random_uniform(6) + 1)
        print(diceroll)
        updateViewsWithRoll(diceroll: diceroll)
        updateDiceViewWithRoll(diceroll: diceroll)
        return diceroll
}

    func updateViewsWithRoll(diceroll: Int) {
        if diceroll == 1 {
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
            view8.isHidden = true
            view9.isHidden = true
        } else if diceroll == 2 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
            view8.isHidden = true
            view9.isHidden = false
        } else if diceroll == 3 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
            view8.isHidden = true
            view9.isHidden = false
        } else if diceroll == 4 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
        } else if diceroll == 5 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
        } else if diceroll == 6 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
        } else { print(diceroll); return }
    }
    
    func updateDiceViewWithRoll(diceroll: Int) {
        if diceroll == 1 {
            diceView1.isHidden = false
            diceView2.isHidden = true
            diceView3.isHidden = true
            diceView4.isHidden = true
            diceView5.isHidden = true
            diceView6.isHidden = true
        } else if diceroll == 2 {
            diceView1.isHidden = true
            diceView2.isHidden = false
            diceView3.isHidden = true
            diceView4.isHidden = true
            diceView5.isHidden = true
            diceView6.isHidden = true
        } else if diceroll == 3 {
            diceView1.isHidden = true
            diceView2.isHidden = true
            diceView3.isHidden = false
            diceView4.isHidden = true
            diceView5.isHidden = true
            diceView6.isHidden = true
        } else if diceroll == 4 {
            diceView1.isHidden = true
            diceView2.isHidden = true
            diceView3.isHidden = true
            diceView4.isHidden = false
            diceView5.isHidden = true
            diceView6.isHidden = true
        } else if diceroll == 5 {
            diceView1.isHidden = true
            diceView2.isHidden = true
            diceView3.isHidden = true
            diceView4.isHidden = true
            diceView5.isHidden = false
            diceView6.isHidden = true
        } else if diceroll == 6 {
            diceView1.isHidden = true
            diceView2.isHidden = true
            diceView3.isHidden = true
            diceView4.isHidden = true
            diceView5.isHidden = true
            diceView6.isHidden = false
        } else { print(diceroll); return }
    }
    
}
//    func updateLabelWithRoll(diceroll: Int) {
////
////        let diceScore = String(roll)
////        
////        if labelOne.hidden {
////            labelOne.text = diceScore
////            labelOne.hidden = false
////        } else if labelTwo.hidden {
////            labelTwo.text = diceScore
////            labelTwo.hidden = false
////        } else if labelThree.hidden {
////            labelThree.text = diceScore
////            labelThree.hidden = false
////        }
        // .. and so on
