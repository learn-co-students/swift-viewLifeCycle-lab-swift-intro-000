//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var a1: UIView!
    @IBOutlet weak var a2: UIView!
    @IBOutlet weak var a3: UIView!
    @IBOutlet weak var b2: UIView!
    @IBOutlet weak var c1: UIView!
    @IBOutlet weak var c2: UIView!
    @IBOutlet weak var c3: UIView!
    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    @IBOutlet weak var n6: UILabel!
    @IBOutlet weak var diceButton: UIButton!
    @IBOutlet weak var gameOver: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        a1.isHidden = true
        a2.isHidden = true
        a3.isHidden = true
        b2.isHidden = true
        c1.isHidden = true
        c2.isHidden = true
        c3.isHidden = true
        n1.isHidden = true
        n2.isHidden = true
        n3.isHidden = true
        n4.isHidden = true
        n5.isHidden = true
        n6.isHidden = true
        gameOver.isHidden = true
    }
    
    func showDice(_ roll: String) {
        if gameOver.isHidden == true {
            switch roll {
            case "1":
                a1.isHidden = true
                a2.isHidden = true
                a3.isHidden = true
                b2.isHidden = false
                c1.isHidden = true
                c2.isHidden = true
                c3.isHidden = true
            case "2":
                a1.isHidden = true
                a2.isHidden = false
                a3.isHidden = true
                b2.isHidden = true
                c1.isHidden = true
                c2.isHidden = false
                c3.isHidden = true
            case "3":
                a1.isHidden = true
                a2.isHidden = true
                a3.isHidden = false
                b2.isHidden = false
                c1.isHidden = false
                c2.isHidden = true
                c3.isHidden = true
            case "4":
                a1.isHidden = false
                a2.isHidden = true
                a3.isHidden = false
                b2.isHidden = true
                c1.isHidden = false
                c2.isHidden = true
                c3.isHidden = false
            case "5":
                a1.isHidden = false
                a2.isHidden = true
                a3.isHidden = false
                b2.isHidden = false
                c1.isHidden = false
                c2.isHidden = true
                c3.isHidden = false
            case "6":
                a1.isHidden = false
                a2.isHidden = false
                a3.isHidden = false
                b2.isHidden = true
                c1.isHidden = false
                c2.isHidden = false
                c3.isHidden = false
            default:
                a1.isHidden = true
                a2.isHidden = true
                a3.isHidden = true
                b2.isHidden = true
                c1.isHidden = true
                c2.isHidden = true
                c3.isHidden = true
            }
        }
    }
    
    func showLabel(_ diceResult: String) {
        if n1.text == "N" {
            n1.text = diceResult
            n1.isHidden = false
        }
        else if n2.text == "N" {
            n2.text = diceResult
            n2.isHidden = false
        }
        else if n3.text == "N" {
            n3.text = diceResult
            n3.isHidden = false
        }
        else if n4.text == "N" {
            n4.text = diceResult
            n4.isHidden = false
        }
        else if n5.text == "N" {
            n5.text = diceResult
            n5.isHidden = false
        }
        else if n6.text == "N" {
            n6.text = diceResult
            n6.isHidden = false
        }
        else {
            diceButton.isHidden = true
            gameOver.isHidden = false
            a1.isHidden = true
            a2.isHidden = true
            a3.isHidden = true
            b2.isHidden = true
            c1.isHidden = true
            c2.isHidden = true
            c3.isHidden = true
        }         
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var diceResult: String
        diceResult = String(randomDiceRoll())
        print(diceResult)
        
        showLabel(diceResult)
        
        showDice(diceResult)

    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
