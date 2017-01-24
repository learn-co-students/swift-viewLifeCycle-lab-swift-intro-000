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
    @IBOutlet weak var resultView1: UIView!
    @IBOutlet weak var resultView2: UIView!
    @IBOutlet weak var resultView3: UIView!
    @IBOutlet weak var resultView4: UIView!
    @IBOutlet weak var resultView5: UIView!
    @IBOutlet weak var resultView6: UIView!
    @IBOutlet weak var resultLabel1: UILabel!
    @IBOutlet weak var resultLabel2: UILabel!
    @IBOutlet weak var resultLabel3: UILabel!
    @IBOutlet weak var resultLabel4: UILabel!
    @IBOutlet weak var resultLabel5: UILabel!
    @IBOutlet weak var resultLabel6: UILabel!
    
    func resetViews() {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        resultView1.isHidden = true
        resultView2.isHidden = true
        resultView3.isHidden = true
        resultView4.isHidden = true
        resultView5.isHidden = true
        resultView6.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        resetViews()
        
    }
    
// Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    
// Change roll history
    
    func updateResult(roll: Int) {
        let currentRoll = String(roll)
        
        if resultView1.isHidden {
            
            resultLabel1.text = currentRoll
            resultView1.isHidden = false
            
        } else if resultView2.isHidden {
            
            resultLabel2.text = currentRoll
            resultView2.isHidden = false
            
        } else if resultView3.isHidden {
            
            resultLabel3.text = currentRoll
            resultView3.isHidden = false
            
        } else if resultView4.isHidden {
            
            resultLabel4.text = currentRoll
            resultView4.isHidden = false
            
        } else if resultView5.isHidden {
            
            resultLabel5.text = currentRoll
            resultView5.isHidden = false
            
        } else if resultView6.isHidden {
            
            resultLabel6.text = currentRoll
            resultView6.isHidden = false
            
        }
        
    }
    
// Update die display
    func displayDie(roll: Int) {
        switch roll {
        case 1:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        case 2:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
        case 3:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
        case 4:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
        case 5:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        }
    }
    
    
    
// Button tapped
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let newRoll = randomDiceRoll()
        updateResult(roll: newRoll)
        displayDie(roll: newRoll)
        print(newRoll)

    }
}
