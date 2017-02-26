//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blackBox1: UIView!
    @IBOutlet weak var blackBox2: UIView!
    @IBOutlet weak var blackBox3: UIView!
    @IBOutlet weak var blackBox4: UIView!
    @IBOutlet weak var blackBox5: UIView!
    @IBOutlet weak var blackBox6: UIView!
    @IBOutlet weak var blackBox7: UIView!
    
    
    @IBOutlet weak var littleBox1: UILabel!
    @IBOutlet weak var littleBox2: UILabel!
    @IBOutlet weak var littleBox3: UILabel!
    @IBOutlet weak var littleBox4: UILabel!
    @IBOutlet weak var littleBox5: UILabel!
    @IBOutlet weak var littleBox6: UILabel!
    
    var rolls = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideAllView()
        hideAllLabel()
        
    }
    
    func hideAllView() {
        for i in 0...6 {
            blackBoxesForIndex(i: i).isHidden = true
        }
    }
    
    func hideAllLabel() {
        for i in 0...5 {
            littleBoxesForIndex(i: i).isHidden = true
        }
    }

    func blackBoxesForIndex(i: Int) -> UIView {
        switch i {
        case 0: return blackBox1
        case 1: return blackBox2
        case 2: return blackBox3
        case 3: return blackBox4
        case 4: return blackBox5
        case 5: return blackBox6
        case 6: return blackBox7
        default: assert(false, "Invalid index\(i)")
        }
    }
    
    func littleBoxesForIndex(i: Int) -> UILabel {
        switch i {
        case 0: return littleBox1
        case 1: return littleBox2
        case 2: return littleBox3
        case 3: return littleBox4
        case 4: return littleBox5
        case 5: return littleBox6
        default: assert(false, "Invalid index \(index)")
        }
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        let label = littleBoxesForIndex(i: rolls % 6)
        label.text = "\(roll)"
        label.isHidden = false
    
    }
    
    func openBlackBoxes(count: Int) -> [UIView] {
        switch count {
        case 1: return [blackBox1]
        case 2: return [blackBox1, blackBox2]
        case 3: return [blackBox1, blackBox2, blackBox3]
        case 4: return [blackBox1, blackBox2, blackBox3, blackBox4]
        case 5: return [blackBox1, blackBox2, blackBox3, blackBox4, blackBox5]
        case 6: return [blackBox1, blackBox2, blackBox3, blackBox4, blackBox5, blackBox6]
        default: assert(false, "Invalid Blackboxes \(count)")
        }
    }
    
    func rearrangeDie(count: Int) {
        hideAllView()
        
        for i in openBlackBoxes(count: count) {
            i.isHidden = false
        }
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let randomNumber = randomDiceRoll()
        updateLabelWithRoll(roll: randomNumber)
        rearrangeDie(count: randomNumber)
        rolls += 1
    }


}
