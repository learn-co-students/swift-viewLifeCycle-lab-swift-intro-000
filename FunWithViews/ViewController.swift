//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //"visual representation" of a rolled die
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view9: UIView!
    
    //results of each roll
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    var rollCount = 0
    var result: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideViews()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        hideViews()
        result = randomDiceRoll()
        visualizeRolledDie(result: result)
        rollCount += 1
        switch rollCount {
        case 1:
            roll1.text = String(result)
        case 2:
            roll2.text = String(result)
        case 3:
            roll3.text = String(result)
        case 4:
            roll4.text = String(result)
        case 5:
            roll5.text = String(result)
        case 6:
            roll6.text = String(result)
        default:
            resetReslts()
            hideViews()
        }
    }
    //hides all rectangles representing rolled die
    func hideViews() {
        view1.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view7.isHidden = true
        view9.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    //resets rolls count and results
    func resetReslts() {
        rollCount = 0
        result = 0
        roll1.text = String()
        roll2.text = String()
        roll3.text = String()
        roll4.text = String()
        roll5.text = String()
        roll6.text = String()
    }
    //"visually" draws rolled die
    func visualizeRolledDie(result: Int) {
        switch result {
        case 1:
            view5.isHidden = false
        case 2:
            view3.isHidden = false
            view7.isHidden = false
        case 3:
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        case 6:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        default:
            hideViews()
        }
    }

}
