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
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearDiceBoxes()
        clearHistoryBoxes()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let dicerollnum = randomDiceRoll()
        
        updateLabelWithRoll(roll: dicerollnum)
        updateDiceBoard(roll: dicerollnum)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func clearDiceBoxes(){
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
    }
    
    func clearHistoryBoxes(){
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    func updateDiceBoard(roll: Int){
        clearDiceBoxes()
        
        switch(roll){
        case 1:
            view4.isHidden = false
            
        case 2:
            view2.isHidden = false
            view6.isHidden = false
            
        case 3:
            view2.isHidden = false
            view6.isHidden = false
            view4.isHidden = false
            
        case 4:
            view1.isHidden = false
            view2.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            
        case 5:
            view4.isHidden = false
            view1.isHidden = false
            view2.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            
        default:
            clearDiceBoxes()
            
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        }else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        }else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        }else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        }else{
            clearHistoryBoxes()
            updateLabelWithRoll(roll: Int(diceScore)!)
        }
    }

}
