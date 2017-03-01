//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UILabel!
    @IBOutlet weak var view2: UILabel!
    @IBOutlet weak var view3: UILabel!
    @IBOutlet weak var view4: UILabel!
    @IBOutlet weak var view5: UILabel!
    @IBOutlet weak var view6: UILabel!
    @IBOutlet weak var view7: UILabel!
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    
    @IBAction func pressedDice(_ sender: UIButton) {
        
        let result = randomDiceRoll()
        print(result)
        updateLabelWithRoll(roll: result)
        
        if result1.isHidden == false && result2.isHidden == false && result3.isHidden == false && result4.isHidden == false && result5.isHidden == false && result6.isHidden == false {
            result1.isHidden = true
            result2.isHidden = true
            result3.isHidden = true
            result4.isHidden = true
            result5.isHidden = true
            result6.isHidden = true
        }

        if result1.isHidden {
            result1.text = String(result)
            result1.isHidden = false
        } else if result2.isHidden {
            result2.text = String(result)
            result2.isHidden = false
        } else if result3.isHidden {
            result3.text = String(result)
            result3.isHidden = false
        } else if result4.isHidden {
            result4.text = String(result)
            result4.isHidden = false
        } else if result5.isHidden {
            result5.text = String(result)
            result5.isHidden = false
        } else if result6.isHidden {
            result6.text = String(result)
            result6.isHidden = false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
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
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
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
            print("Dafug!")
        }
        
    }
    
}
