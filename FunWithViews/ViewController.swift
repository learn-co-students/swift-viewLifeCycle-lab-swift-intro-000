 // 
// ViewController.swift
// FunWithViews 
//
// Created by Jim  Campagno on 9/17/16.
// Copyright @ 2016 Flatiron School. All rights reserved 
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var G: UIView!
    @IBOutlet weak var F: UIView!
    @IBOutlet weak var E: UIView!
    @IBOutlet weak var D: UIView!
    @IBOutlet weak var C: UIView!
    @IBOutlet weak var B: UIView!
    @IBOutlet weak var A: UIView!
    @IBOutlet weak var One: UILabel!
    @IBOutlet weak var Two: UILabel!
    @IBOutlet weak var Three: UILabel!
    @IBOutlet weak var Four: UILabel!
    @IBOutlet weak var Five: UILabel!
    @IBOutlet weak var Six: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetDiFace()
        G.isHidden = true
        F.isHidden = true
        E.isHidden = true
        D.isHidden = true
        C.isHidden = true
        B.isHidden = true
        A.isHidden = true
        One.isHidden = true
        Two.isHidden = true
        Three.isHidden = true
        Four.isHidden = true
        Five.isHidden = true
        Six.isHidden = true
}
    

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var diceRoll: Int
        diceRoll = randomDiceRoll()
        
        updateLabelWithRoll(roll: diceRoll)
        showDi(diValue: diceRoll)
        }
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func resetDiFace(){
        A.isHidden = true
        B.isHidden = true
        C.isHidden = true
        D.isHidden = true
        E.isHidden = true
        F.isHidden = true
        G.isHidden = true
    }
     func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
            if One.isHidden {
                One.text = diceScore
                One.isHidden = false
            } else if Two.isHidden {
                Two.text = diceScore
                Two.isHidden = false
            } else if Three.isHidden {
                Three.text = diceScore
                Three.isHidden = false
            } else if Four.isHidden {
                Four.text = diceScore
                Four.isHidden = false
            } else if Five.isHidden {
                Five.text = diceScore
                Five.isHidden = false
            } else if Six.isHidden {
                Six.text = diceScore
                Six.isHidden = false
}
        func showDi(diValue: Int) {
            resetDiFace()
            
            switch true {
            case diValue == 1:
            A.isHidden = false
            case diValue == 2:
            A.isHidden = false
            B.isHidden = false
            case diValue == 3:
            A.isHidden = false
            B.isHidden = false
            C.isHidden = false
            case diValue == 4:
            A.isHidden = false
            B.isHidden = false
            C.isHidden = false
            D.isHidden = false
            case diValue == 5:
            A.isHidden = false
            B.isHidden = false
            C.isHidden = false
            D.isHidden = false
            E.isHidden = false
            case diValue == 6:
            A.isHidden = false
            B.isHidden = false
            C.isHidden = false
            D.isHidden = false
            E.isHidden = false
            G.isHidden = false
            default:
            resetDiFace()
    }
}
