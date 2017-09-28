//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dot1:UIView!
    @IBOutlet weak var dot2:UIView!
    @IBOutlet weak var dot3:UIView!
    @IBOutlet weak var dot4:UIView!
    @IBOutlet weak var dot5:UIView!
    @IBOutlet weak var dot6:UIView!
    @IBOutlet weak var dot7:UIView!
    
    @IBOutlet weak var text1:UILabel!
    @IBOutlet weak var text2:UILabel!
    @IBOutlet weak var text3:UILabel!
    @IBOutlet weak var text4:UILabel!
    @IBOutlet weak var text5:UILabel!
    @IBOutlet weak var text6:UILabel!
    var curText = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hidealldots()
        curText = 1
        text1.text = " ";
        text2.text = " ";
        text3.text = " ";
        text4.text = " ";
        text5.text = " ";
        text6.text = " ";
    }
    
    func hidealldots() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
    }
    
    func diaplayCurText(uNum:Int) {
        switch curText {
        case 1: text1.text = String(uNum)
        case 2: text2.text = String(uNum)
        case 3: text3.text = String(uNum)
        case 4: text4.text = String(uNum)
        case 5: text5.text = String(uNum)
        case 6: text6.text = String(uNum)
        default: break
        }
        if curText>=6 {
            curText=1
        } else {
            curText += 1
        }
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        hidealldots()
        let curDice:Int = randomDiceRoll()
        diaplayCurText(uNum:curDice)
        
        switch curDice {
        case 1:
            dot4.isHidden = false
        case 2:
            dot1.isHidden = false
            dot7.isHidden = false
        case 3:
            dot1.isHidden = false
            dot4.isHidden = false
            dot7.isHidden = false
        case 4:
            dot1.isHidden = false
            dot2.isHidden = false
            dot6.isHidden = false
            dot7.isHidden = false
        case 5:
            dot1.isHidden = false
            dot2.isHidden = false
            dot4.isHidden = false
            dot6.isHidden = false
            dot7.isHidden = false
        case 6:
            dot1.isHidden = false
            dot2.isHidden = false
            dot3.isHidden = false
            dot5.isHidden = false
            dot6.isHidden = false
            dot7.isHidden = false
        default:
            break
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
