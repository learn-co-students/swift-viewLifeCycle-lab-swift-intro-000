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
        } else if result2.isHidden {
            result2.text = String(randomDiceRoll())
            result2.isHidden = false
        }
    }

}
