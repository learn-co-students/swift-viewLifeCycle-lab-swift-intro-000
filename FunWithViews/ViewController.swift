//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            for results in [result1, result2, result3, result4, result5, result6] {
            results?.isHidden = true
            }
            for boxes in [box1, box2, box3, box4, box5, box6, box7] {
            boxes?.isHidden = true
            }
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        updateLabel()

    }
    
//    for boxes in [box1, box2, box3, box4, box5, box6, box7] {
//    boxes?.isHidden = true
//    }
//    
//    for results in [result1, result2, result3, result4, result5, result6] {
//    results?.isHidden = true
//    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateLabel() {
        if result1.isHidden {
            result1.text = String(randomDiceRoll())
            result1.isHidden = false
            rearrangeBoxes1()
        } else if result2.isHidden {
            result2.text = String(randomDiceRoll())
            result2.isHidden = false
            for boxes in [box1, box2, box3, box4, box5, box6, box7] {
                boxes?.isHidden = true
            }
            rearrangeBoxes2()
        } else if result3.isHidden {
            result3.text = String(randomDiceRoll())
            result3.isHidden = false
            for boxes in [box1, box2, box3, box4, box5, box6, box7] {
                boxes?.isHidden = true
            }
            rearrangeBoxes3()
        } else if result4.isHidden {
            result4.text = String(randomDiceRoll())
            result4.isHidden = false
            for boxes in [box1, box2, box3, box4, box5, box6, box7] {
                boxes?.isHidden = true
            }
            rearrangeBoxes4()
        } else if result5.isHidden {
            result5.text = String(randomDiceRoll())
            result5.isHidden = false
            for boxes in [box1, box2, box3, box4, box5, box6, box7] {
                boxes?.isHidden = true
            }
            rearrangeBoxes5()
        } else if result6.isHidden {
            result6.text = String(randomDiceRoll())
            result6.isHidden = false
            for boxes in [box1, box2, box3, box4, box5, box6, box7] {
                boxes?.isHidden = true
            }
            rearrangeBoxes6()
        }
    }
   
    func rearrangeBoxes1() {
        if result1.text == String(1) {
           box4.isHidden = false
        } else if result1.text == String(2) {
            box2.isHidden = false
            box6.isHidden = false
        } else if result1.text == String(3) {
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
        } else if result1.text == String(4) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        } else if result1.text == String(5) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if result1.text == String(6) {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }
    
    func rearrangeBoxes2() {
        if result2.text == String(1) {
            box4.isHidden = false
        } else if result2.text == String(2) {
            box2.isHidden = false
            box6.isHidden = false
        } else if result2.text == String(3) {
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
        } else if result2.text == String(4) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        } else if result2.text == String(5) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if result2.text == String(6) {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }
    
    func rearrangeBoxes3() {
        if result3.text == String(1) {
            box4.isHidden = false
        } else if result3.text == String(2) {
            box2.isHidden = false
            box6.isHidden = false
        } else if result3.text == String(3) {
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
        } else if result3.text == String(4) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        } else if result3.text == String(5) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if result3.text == String(6) {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }
    
    func rearrangeBoxes4() {
        if result4.text == String(1) {
            box4.isHidden = false
        } else if result4.text == String(2) {
            box2.isHidden = false
            box6.isHidden = false
        } else if result4.text == String(3) {
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
        } else if result4.text == String(4) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        } else if result4.text == String(5) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if result4.text == String(6) {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }
    
    func rearrangeBoxes5() {
        if result5.text == String(1) {
            box4.isHidden = false
        } else if result5.text == String(2) {
            box2.isHidden = false
            box6.isHidden = false
        } else if result5.text == String(3) {
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
        } else if result5.text == String(4) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        } else if result5.text == String(5) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if result5.text == String(6) {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }
    
    func rearrangeBoxes6() {
        if result6.text == String(1) {
            box4.isHidden = false
        } else if result6.text == String(2) {
            box2.isHidden = false
            box6.isHidden = false
        } else if result6.text == String(3) {
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
        } else if result6.text == String(4) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        } else if result6.text == String(5) {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if result6.text == String(6) {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }


}

