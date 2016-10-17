//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var one: UIView!
    
    @IBOutlet weak var two: UIView!
    
    @IBOutlet weak var three: UIView!
    
    @IBOutlet weak var four: UIView!
    
    @IBOutlet weak var five: UIView!
    
    @IBOutlet weak var six: UIView!
    
    @IBOutlet weak var seven: UIView!
    
    @IBOutlet weak var red: UILabel!
    
    @IBOutlet weak var orange: UILabel!
    
    @IBOutlet weak var yellow: UILabel!
    
    @IBOutlet weak var green: UILabel!
    
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var purple: UILabel!
    
    @IBAction func dice(_ sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rearrangeDie()
        updateScore()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
    
        return updateLabelWithRoll(roll: randomDiceRoll())
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func updateLabelWithRoll(roll : Int) {
        
        let diceScore = String(randomDiceRoll())
        
        if red.isHidden {
            red.text = diceScore
            red.isHidden = false
            switch diceScore {
            case "1":
                uno()
            case "2":
                dos()
            case "3":
                tres()
            case "4":
                cuatro()
            case "5":
                cinco()
            default:
                seis()
            }
       
        } else if orange.isHidden {
            rearrangeDie()
            orange.text = diceScore
            orange.isHidden = false
            switch diceScore {
            case "1":
                uno()
            case "2":
                dos()
            case "3":
                tres()
            case "4":
                cuatro()
            case "5":
                cinco()
            default:
                seis()
            }

        } else if yellow.isHidden {
            rearrangeDie()
            yellow.text = diceScore
            yellow.isHidden = false
            switch diceScore {
            case "1":
                uno()
            case "2":
                dos()
            case "3":
                tres()
            case "4":
                cuatro()
            case "5":
                cinco()
            default:
                seis()
            }

        } else if green.isHidden {
            rearrangeDie()
            green.text = diceScore
            green.isHidden = false
            switch diceScore {
            case "1":
                uno()
            case "2":
                dos()
            case "3":
                tres()
            case "4":
                cuatro()
            case "5":
                cinco()
            default:
                seis()
            }

        } else if blue.isHidden {
            rearrangeDie()
            blue.text = diceScore
            blue.isHidden = false
            switch diceScore {
            case "1":
                uno()
            case "2":
                dos()
            case "3":
                tres()
            case "4":
                cuatro()
            case "5":
                cinco()
            default:
                seis()
            }

        } else if purple.isHidden {
            rearrangeDie()
            purple.text = diceScore
            purple.isHidden = false
            switch diceScore {
            case "1":
                uno()
            case "2":
                dos()
            case "3":
                tres()
            case "4":
                cuatro()
            case "5":
                cinco()
            default:
                seis()
            }

        } else {
            viewDidLoad()
        }

    }
    
    func rearrangeDie() {
        one.isHidden = true
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        seven.isHidden = true
    }
    
    func updateScore() {
        red.isHidden = true
        orange.isHidden = true
        yellow.isHidden = true
        green.isHidden = true
        blue.isHidden = true
        purple.isHidden = true
    }
    
    func uno() {
        four.isHidden = false
    }
    
    func dos() {
        one.isHidden = false
        seven.isHidden = false
    }
    
    func tres() {
        two.isHidden = false
        four.isHidden = false
        six.isHidden = false
    }
    
    func cuatro() {
        one.isHidden = false
        two.isHidden = false
        six.isHidden = false
        seven.isHidden = false
    }
    
    func cinco() {
        one.isHidden = false
        two.isHidden = false
        four.isHidden = false
        six.isHidden = false
        seven.isHidden = false
    }
    
    func seis() {
        one.isHidden = false
        two.isHidden = false
        three.isHidden = false
        five.isHidden = false
        six.isHidden = false
        seven.isHidden = false
    }

}
