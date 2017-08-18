//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideDieViews(status: true)
        resetLabelView(labelStatus: true)
    }
    var counterDie = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        counterDie = counterDie + 1
        updateDieRoll(rollis: roll)
        updateScoreLable(turnValue: roll, chance: counterDie)
    }
    
    //hide all dies
    func hideDieViews(status: Bool){
        view1.isHidden = status
        view2.isHidden = status
        view3.isHidden = status
        view4.isHidden = status
        view5.isHidden = status
        view6.isHidden = status
        view7.isHidden = status
    }
    
    //reset all labels
    func resetLabelView(labelStatus: Bool){
        label1.isHidden = labelStatus
        label2.isHidden = labelStatus
        label3.isHidden = labelStatus
        label4.isHidden = labelStatus
        label5.isHidden = labelStatus
        label6.isHidden = labelStatus
    }
    
    //updates the views to show the roll
    func updateDieRoll(rollis: Int){
        hideDieViews(status: true)
        switch rollis {
        case 1:
            view4.isHidden = false
        case 2:
            view1.isHidden = false
            view7.isHidden = false
        case 3:
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            hideDieViews(status: true)
            print("You lost it bro!")
        }
    }
    
    //updates the score
    func updateScoreLable(turnValue: Int, chance: Int){
        switch chance {
        case 1:
            label1.isHidden = false
            label1.text = String(turnValue)
        case 2:
            label2.isHidden = false
            label2.text = String(turnValue)
        case 3:
            label3.isHidden = false
            label3.text = String(turnValue)
        case 4:
            label4.isHidden = false
            label4.text = String(turnValue)
        case 5:
            label5.isHidden = false
            label5.text = String(turnValue)
        case 6:
            label6.isHidden = false
            label6.text = String(turnValue)
        case 7:
            label1.text = "Six chance done. Restart game!"
            resetLabelView(labelStatus: true)
            counterDie = 0
        default:
            label1.text = "420"
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
