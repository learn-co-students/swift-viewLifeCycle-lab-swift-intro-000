//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var v3: UIView!
    @IBOutlet weak var v4: UIView!
    @IBOutlet weak var v5: UIView!
    @IBOutlet weak var v6: UIView!
    @IBOutlet weak var v7: UIView!
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    
    var count:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAll()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
               hideAll()
        
        dicePattern(val: randomDiceRoll())
        
    }
    
    func hideAll(){
        v2.isHidden = true
        v1.isHidden = true
        v3.isHidden = true
        v4.isHidden = true
        v5.isHidden = true
        v6.isHidden = true
        v7.isHidden = true
    }
    
    
    
    func setScore(score:Int){
        
        print (score)
        var roll:Int = 0
        roll = count % 6
        switch roll {
        case 0:
            l1.isHidden = false
            l1.text = String(score)
        case 1:
            l2.isHidden = false
            l2.text = String(score)
        case 2:
            l3.isHidden = false
            l3.text = String(score)
        case 3:
            l4.isHidden = false
            l4.text = String(score)
        case 4:
            l5.isHidden = false
            l5.text = String(score)
        case 5:
            l6.isHidden = false
            l6.text = String(score)
        
        default:
            
         print("error")
        }
        
        count += 1
    }
    
    
    func dicePattern(val:Int){
        switch val {
        case 1:
            
            v4.isHidden = false
            
        case 2:
            
            v1.isHidden = false
            
            v7.isHidden = false
         case 3:
            
            v1.isHidden = false
            
            v4.isHidden = false
            v7.isHidden = false
         case 4:
            v2.isHidden = false
            v1.isHidden = false
            
            v6.isHidden = false
            v7.isHidden = false
        case 5:
            v2.isHidden = false
            v1.isHidden = false
            v4.isHidden = false
            v6.isHidden = false
            v7.isHidden = false
        case 6:
            v2.isHidden = false
            v1.isHidden = false
            v3.isHidden = false
            v5.isHidden = false
            v6.isHidden = false
            v7.isHidden = false
        case 7:
            v2.isHidden = false
            v1.isHidden = false
            v3.isHidden = false
            v4.isHidden = false
            v5.isHidden = false
            v6.isHidden = false
            v7.isHidden = false
        default:
            hideAll()
        }
        setScore(score: val)
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
