//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hideDots()
        hideRolls()
    }
    
    var currentRoll = 0
    
    // Dot IBOutlets
    @IBOutlet weak var dot1: UIView!
    @IBOutlet weak var dot2: UIView!
    @IBOutlet weak var dot3: UIView!
    @IBOutlet weak var dot4: UIView!
    @IBOutlet weak var dot5: UIView!
    @IBOutlet weak var dot6: UIView!
    @IBOutlet weak var dot7: UIView!
    
    // Rolls
    @IBOutlet weak var rb1: UIView!
    @IBOutlet weak var rf1: UILabel!
    @IBOutlet weak var rb2: UIView!
    @IBOutlet weak var rf2: UILabel!
    @IBOutlet weak var rb3: UIView!
    @IBOutlet weak var rf3: UILabel!
    @IBOutlet weak var rb4: UIView!
    @IBOutlet weak var rf4: UILabel!
    @IBOutlet weak var rb5: UIView!
    @IBOutlet weak var rf5: UILabel!
    @IBOutlet weak var rb6: UIView!
    @IBOutlet weak var rf6: UILabel!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        hideDots()
        if currentRoll == 0 {
            hideRolls()
        }
        let dots = [dot1, dot2, dot3, dot4, dot5, dot6, dot7]
        let dotDict: [Int: [Int]] = [1: [4],
                                     2: [1, 7],
                                     3: [1, 4, 7],
                                     4: [1, 3, 5, 7],
                                     5: [1, 3, 4, 5, 7],
                                     6: [1, 2, 3, 5, 6, 7]]
        let rollBacks = [rb1, rb2, rb3, rb4, rb5, rb6]
        let rollFronts = [rf1, rf2, rf3, rf4, rf5, rf6]
        let roll: Int = randomDiceRoll()
        for dot in dotDict[roll] ?? [3] {
            dots[dot - 1]?.isHidden = false
        }
        rollBacks[currentRoll]?.isHidden = false
        rollFronts[currentRoll]?.text = String(roll)
        rollFronts[currentRoll]?.isHidden = false
        currentRoll += 1
        if currentRoll >= 6 {
            currentRoll = 0
        }
    }
    
    func hideDots() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
    }
    
    func hideRolls() {
        rb1.isHidden = true
        rb2.isHidden = true
        rb3.isHidden = true
        rb4.isHidden = true
        rb5.isHidden = true
        rb6.isHidden = true
        rf1.isHidden = true
        rf2.isHidden = true
        rf3.isHidden = true
        rf4.isHidden = true
        rf5.isHidden = true
        rf6.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
