//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lawfulGood: UIView!
    @IBOutlet weak var lawfulNeutral: UIView!
    @IBOutlet weak var lawfulEvil: UIView!
    @IBOutlet weak var chaoticGood: UIView!
    @IBOutlet weak var chaoticNeutral: UIView!
    @IBOutlet weak var chaoticEvil: UIView!
    @IBOutlet weak var trueNeutral: UIView!
    
    @IBOutlet weak var stromgarde: UILabel!
    @IBOutlet weak var alterac: UILabel!
    @IBOutlet weak var lordaeron: UILabel!
    @IBOutlet weak var kulTiras: UILabel!
    @IBOutlet weak var azeroth: UILabel!
    @IBOutlet weak var kirinTor: UILabel!
 
    var rolls = [Int] () //read apple's documentation to make an array to manage colored block text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stromgarde.isHidden = true
        alterac.isHidden = true
        lordaeron.isHidden = true
        kulTiras.isHidden = true
        azeroth.isHidden = true
        kirinTor.isHidden = true
        hideAll()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        hideAll()
        let num = randomDiceRoll()
        showAlignment(num)
        rolls.append(num)
        if rolls.count == 7 { rolls.removeFirst() }
        updateKingdoms()
        
    }//this function should call updateKingdoms and showAlignment with randomDiceRoll results
    
    func updateKingdoms() {
        for (index, value) in rolls.enumerated() {
            switch index {
            case 0:
                if stromgarde.isHidden { stromgarde.isHidden = false }
                stromgarde.text = "\(value)"
            case 1:
                if alterac.isHidden { alterac.isHidden = false }
                alterac.text = "\(value)"
            case 2:
                if lordaeron.isHidden { lordaeron.isHidden = false }
                lordaeron.text = "\(value)"
            case 3:
                if kulTiras.isHidden { kulTiras.isHidden = false }
                kulTiras.text = "\(value)"
            case 4:
                if azeroth.isHidden { azeroth.isHidden = false }
                azeroth.text = "\(value)"
            case 5:
                if kirinTor.isHidden { kirinTor.isHidden = false }
                kirinTor.text = "\(value)"
            default:
                break
            }
        }
        
    }// this function will update the colored squares to reflect the last 6 rolls, update rolls array, and clean out rolls array
    
    func showAlignment(_ roll: Int ) {
  
        switch roll{
        case 1 : trueNeutral.isHidden = false
        case 2 :
            chaoticGood.isHidden = false
            lawfulEvil.isHidden = false
        case 3:
            showAlignment(1)
            showAlignment(2)
        case 4:
            lawfulGood.isHidden = false
            chaoticEvil.isHidden = false
            showAlignment(2)
        case 5:
            showAlignment(4)
            showAlignment(1)
        case 6:
            showAlignment(4)
            lawfulNeutral.isHidden = false
            chaoticNeutral.isHidden = false
        default:
            break
        }
        
    }//this is switch statement that activates the pips displaying a roll. it is recursive to reduce code clutter.
 
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    } // Returns back a random Int (1, 2, 3, 4, 5, or 6)

    func hideAll () {
        lawfulGood.isHidden = true
        lawfulNeutral.isHidden = true
        lawfulEvil.isHidden = true
        chaoticGood.isHidden = true
        chaoticNeutral.isHidden = true
        chaoticEvil.isHidden = true
        trueNeutral.isHidden = true
    }//hides the pips
}
