//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Black squares
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    // Colored squares
    @IBOutlet weak var cView1: UILabel!
    @IBOutlet weak var cView2: UILabel!
    @IBOutlet weak var cView3: UILabel!
    @IBOutlet weak var cView4: UILabel!
    @IBOutlet weak var cView5: UILabel!
    @IBOutlet weak var cView6: UILabel!
    
    // Repeat hide-black-squares each roll
    func hideSquares() {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideSquares()
        clearBoard()
    }
    
    // Show appropriate die
    func updateBlackSquares (roll: Int) {
        switch roll {
        case 1:
            view7.isHidden = false
        case 2:
            view1.isHidden = false
            view6.isHidden = false
        case 3:
            view3.isHidden = false
            view4.isHidden = false
            view7.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
        default:
            print("roll again")
        }
    }
    
    // Display doll roll in each label
    func updateLabelScore (roll: Int) {
        let diceScore = String(roll)
        
        if cView1.isHidden {
            cView1.text = diceScore
            cView1.textAlignment = NSTextAlignment.center
            cView1.isHidden = false
        } else if cView2.isHidden {
            cView2.text = diceScore
            cView2.textAlignment = NSTextAlignment.center
            cView2.isHidden = false
        } else if cView3.isHidden {
            cView3.text = diceScore
            cView3.textAlignment = NSTextAlignment.center
            cView3.isHidden = false
        } else if cView4.isHidden {
            cView4.text = diceScore
            cView4.textAlignment = NSTextAlignment.center
            cView4.isHidden = false
        } else if cView5.isHidden {
            cView5.text = diceScore
            cView5.textAlignment = NSTextAlignment.center
            cView5.isHidden = false
        } else if cView6.isHidden {
            cView6.text = diceScore
            cView6.textAlignment = NSTextAlignment.center
            cView6.isHidden = false
        }
    }
    
    // Clear board after 6 rolls (start over)
    func clearBoard () {
        cView1.isHidden = true
        cView2.isHidden = true
        cView3.isHidden = true
        cView4.isHidden = true
        cView5.isHidden = true
        cView6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if !(cView6.isHidden) {
            clearBoard()
        }
        
        hideSquares()
        let currentRoll = randomDiceRoll()
        updateBlackSquares(roll: currentRoll)
        updateLabelScore(roll: currentRoll)
    
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
