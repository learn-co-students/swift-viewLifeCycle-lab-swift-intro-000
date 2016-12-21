//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bbox1: UIView!
    @IBOutlet weak var bbox2: UIView!
    @IBOutlet weak var bbox3: UIView!
    @IBOutlet weak var bbox4: UIView!
    @IBOutlet weak var bbox5: UIView!
    @IBOutlet weak var bbox6: UIView!
    @IBOutlet weak var bbox7: UIView!
    
    
    @IBOutlet weak var scorebd1: UIView!
    @IBOutlet weak var scorebd2: UIView!
    @IBOutlet weak var scorebd3: UIView!
    @IBOutlet weak var scorebd4: UIView!
    @IBOutlet weak var scorebd5: UIView!
    @IBOutlet weak var scorebd6: UIView!
    
    
    
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    
    @IBOutlet weak var egain: UILabel!
    
    
    
    override func viewDidLoad() {
        egain.isHidden = true
        
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
        
        
        bbox2.isHidden = true
        bbox5.isHidden = true
        
        super.viewDidLoad()
        
    }
    
    var resultcount = 0
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        print("succesfully rolled a", roll)
        resultcount = (resultcount + 1) % 7
        print("result number", resultcount)
        
        
        bbox1.isHidden = true
        bbox2.isHidden = true
        bbox3.isHidden = true
        bbox4.isHidden = true
        bbox5.isHidden = true
        bbox6.isHidden = true
        bbox7.isHidden = true
        
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
        
        egain.isHidden = true
    
    
    switch roll{
    case 1:
    bbox7.isHidden = false
    case 2:
    bbox1.isHidden = false
    bbox6.isHidden = false
    case 3:
    bbox1.isHidden = false
    bbox7.isHidden = false
    bbox6.isHidden = false
    case 4:
    bbox1.isHidden = false
    bbox3.isHidden = false
    bbox4.isHidden = false
    bbox6.isHidden = false
    case 5:
    bbox1.isHidden = false
    bbox3.isHidden = false
    bbox7.isHidden = false
    bbox4.isHidden = false
    bbox6.isHidden = false
    case 6:
    bbox1.isHidden = false
    bbox2.isHidden = false
    bbox3.isHidden = false
    bbox4.isHidden = false
    bbox5.isHidden = false
    bbox6.isHidden = false
    default:
        bbox1.isHidden = true
        bbox2.isHidden = true
        bbox3.isHidden = true
        bbox4.isHidden = true
        bbox5.isHidden = true
        bbox6.isHidden = true
        bbox7.isHidden = true
        
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
    
        egain.isHidden = false
    }
    switch resultcount{
    case 1:
    result1.isHidden = false
    result1.text = String(roll)
    case 2:
        result1.isHidden = false
    result2.isHidden = false
    result2.text = String(roll)
    case 3:
        result1.isHidden = false
        result2.isHidden = false
    result3.isHidden = false
    result3.text = String(roll)
    case 4:
        result1.isHidden = false
        result2.isHidden = false
        result3.isHidden = false
    result4.isHidden = false
    result4.text = String(roll)
    case 5:
        result1.isHidden = false
        result2.isHidden = false
        result3.isHidden = false
        result4.isHidden = false
    result5.isHidden = false
    result5.text = String(roll)
    case 6:
        result1.isHidden = false
        result2.isHidden = false
        result3.isHidden = false
        result4.isHidden = false
        result5.isHidden = false
    result6.isHidden = false
    result6.text = String(roll)
    default:
    result1.isHidden = true
    result2.isHidden = true
    result3.isHidden = true
    result4.isHidden = true
    result5.isHidden = true
    result6.isHidden = true
        
    egain.isHidden = false
        }
}
}
