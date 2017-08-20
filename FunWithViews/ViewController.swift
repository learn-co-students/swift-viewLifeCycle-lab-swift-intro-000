//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //black boxes
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view7: UIView!
    
    // result number display
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
    // display on the viewer's screen hide first
    // view2.hidden = false // false means hide the view
            
        view1.isHidden = true // true means hide the view
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let result = randomDiceRoll()
        rearrangeDie(result: result)
        updateLabelWithRoll(result: result)
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    //rearrange the black boxes shown given the result of randomDiceRoll
    func rearrangeDie(result: Int) {
        
        switch result {
            
        case 1:
            view4.isHidden = false  //shows view4
            
            //hides these views
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
            
        case 2:
            view3.isHidden = false
            view4.isHidden = false
            
            view1.isHidden = true
            view2.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
            
        case 3:
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            
            view1.isHidden = true
            view2.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
            
        case 4:
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            
            view1.isHidden = true
            view2.isHidden = true
            view7.isHidden = true
            
        case 5:
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            
            view1.isHidden = true
            view2.isHidden = true
        
        default:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true //hide this there is only 6 in a dice
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            
        }
        
    }

    func updateLabelWithRoll(result: Int) {
        let diceScore = String(result)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        }
        else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        }
        else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        }
        else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        }
        else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        }
        else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        }
        else {
            label1.text = diceScore
            label1.isHidden = false //shows label1
            
            //hides these label
            label2.isHidden = true
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
            label6.isHidden = true
        }
        
    }
}
