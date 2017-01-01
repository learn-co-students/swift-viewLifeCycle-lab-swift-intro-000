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
        LabelOne.isHidden = true;
        LabelTwo.isHidden = true;
        LabelThree.isHidden = true;
        LabelFour.isHidden = true;
        LabelFive.isHidden = true;
        LabelSix.isHidden = true;
        
        CellL1.isHidden = true;
        CellL2.isHidden = true;
        CellL3.isHidden = true;
        CellM.isHidden = true;
        CellR1.isHidden = true;
        CellR2.isHidden = true;
        CellR3.isHidden = true;
        
        super.viewDidLoad()
    }
    
    // Labels 
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    @IBOutlet weak var LabelThree: UILabel!
    @IBOutlet weak var LabelFour: UILabel!
    @IBOutlet weak var LabelFive: UILabel!
    @IBOutlet weak var LabelSix: UILabel!
    
    // Cells
    @IBOutlet weak var CellL1: UIView!
    @IBOutlet weak var CellL2: UIView!
    @IBOutlet weak var CellL3: UIView!
    @IBOutlet weak var CellM: UIView!
    @IBOutlet weak var CellR1: UIView!
    @IBOutlet weak var CellR2: UIView!
    @IBOutlet weak var CellR3: UIView!
    
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let randInt = randomDiceRoll()
        showNumber(randInt)
        setLabel(randInt)
    }
    
    func setLabel(_ num : Int) {
        if (setLabelOne(LabelOne, String(num))) {
            return
        }
        
        if (setLabelOne(LabelTwo, String(num))) {
            return
        }
        
        if (setLabelOne(LabelThree, String(num))) {
            return
        }
        
        if (setLabelOne(LabelFour, String(num))) {
            return
        }
        
        if (setLabelOne(LabelFive, String(num))) {
            return
        }
        
        if (setLabelOne(LabelSix, String(num))) {
            return
        }
    }
    
    func setLabelOne(_ label : UILabel, _ num : String) -> Bool {
        if (label.isHidden) {
            label.isHidden = false
            label.text = num
            return true
        }
        
        return false
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showNumber(_ num : Int) {
        switch num {
        case 1:
            CellL1.isHidden = true;
            CellL2.isHidden = true;
            CellL3.isHidden = true;
            CellM.isHidden = false;
            CellR1.isHidden = true;
            CellR2.isHidden = true;
            CellR3.isHidden = true;
        case 2:
            CellL1.isHidden = true;
            CellL2.isHidden = true;
            CellL3.isHidden = false;
            CellM.isHidden = true;
            CellR1.isHidden = false;
            CellR2.isHidden = true;
            CellR3.isHidden = true;
        case 3:
            CellL1.isHidden = true;
            CellL2.isHidden = true;
            CellL3.isHidden = false;
            CellM.isHidden = false;
            CellR1.isHidden = false;
            CellR2.isHidden = true;
            CellR3.isHidden = true;
        case 4:
            CellL1.isHidden = false;
            CellL2.isHidden = true;
            CellL3.isHidden = false;
            CellM.isHidden = true;
            CellR1.isHidden = false;
            CellR2.isHidden = true;
            CellR3.isHidden = false;
        case 5:
            CellL1.isHidden = false;
            CellL2.isHidden = true;
            CellL3.isHidden = false;
            CellM.isHidden = false;
            CellR1.isHidden = false;
            CellR2.isHidden = true;
            CellR3.isHidden = false;
        case 6:
            CellL1.isHidden = false;
            CellL2.isHidden = false;
            CellL3.isHidden = false;
            CellM.isHidden = true;
            CellR1.isHidden = false;
            CellR2.isHidden = false;
            CellR3.isHidden = false;
        default:
            CellL1.isHidden = true;
            CellL2.isHidden = true;
            CellL3.isHidden = true;
            CellM.isHidden = true;
            CellR1.isHidden = true;
            CellR2.isHidden = true;
            CellR3.isHidden = true;
        }
    }

}
