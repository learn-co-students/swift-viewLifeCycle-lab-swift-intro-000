//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var firstDot: UIView!
    @IBOutlet weak var secondDot: UIView!
    @IBOutlet weak var thirdDot: UIView!
    @IBOutlet weak var fourthDot: UIView!
    @IBOutlet weak var fifthDot: UIView!
    @IBOutlet weak var sixthDot: UIView!
    @IBOutlet weak var seventhDot: UIView!
    
    @IBOutlet weak var firstResult: UIView!
    @IBOutlet weak var secondResult: UIView!
    @IBOutlet weak var thirdResult: UIView!
    @IBOutlet weak var fourthResult: UIView!
    @IBOutlet weak var fifthResult: UIView!
    @IBOutlet weak var sixthResult: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    
    var counting = 0
    
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideAll() {
        firstDot.isHidden = true
        secondDot.isHidden = true
        thirdDot.isHidden = true
        fourthDot.isHidden = true
        fifthDot.isHidden = true
        sixthDot.isHidden = true
        seventhDot.isHidden = true
        
    }
    
    func hideResult() {
        firstResult.isHidden = true
        secondResult.isHidden = true
        thirdResult.isHidden = true
        fourthResult.isHidden = true
        fifthResult.isHidden = true
        sixthResult.isHidden = true
        
    }
    
    func hideLabels() {
        firstLabel.isHidden = true
        secondLabel.isHidden = true
        thirdLabel.isHidden = true
        fourthLabel.isHidden = true
        fifthLabel.isHidden = true
        sixthLabel.isHidden = true
    }
    
    
    
    func dots(rolledDice: Int)  {
        
       
        switch  rolledDice {
    
            case 1:
    
                hideAll()
                
                fourthDot.isHidden = false
            
                
            case 2:
    
                hideAll()
    
                thirdDot.isHidden = false
                fifthDot.isHidden = false
            
    
            case 3:
    
                hideAll()
    
                firstDot.isHidden = false
                fourthDot.isHidden = false
                seventhDot.isHidden = false
            
    
            case 4:
    
                hideAll()
    
                firstDot.isHidden = false
                thirdDot.isHidden = false
                fifthDot.isHidden = false
                seventhDot.isHidden = false
            
    
            case 5:
    
                hideAll()
    
                firstDot.isHidden = false
                thirdDot.isHidden = false
                fourthDot.isHidden = false
                fifthDot.isHidden = false
                seventhDot.isHidden = false
            
    
            case 6:
    
                hideAll()
    
                firstDot.isHidden = false
                secondDot.isHidden = false
                thirdDot.isHidden = false
                fifthDot.isHidden = false
                sixthDot.isHidden = false
                seventhDot.isHidden = false
            
    
            default:
                print("Error")
        }
        
        counting+=1
    }
    
    func makeLabel(roll:Int) {
        
        let diceScore = String(roll)
        
        if firstResult.isHidden {
            firstLabel.text = diceScore
            firstLabel.isHidden = false
        } else if secondResult.isHidden{
            secondLabel.text = diceScore
            secondLabel.isHidden = false
        } else if thirdResult.isHidden{
            thirdLabel.text = diceScore
            thirdLabel.isHidden = false
        } else if fourthResult.isHidden{
            fourthLabel.text = diceScore
            fourthLabel.isHidden = false
        } else if fifthResult.isHidden{
            fifthLabel.text = diceScore
            fifthLabel.isHidden = false
        } else if sixthResult.isHidden{
            sixthLabel.text = diceScore
            sixthLabel.isHidden = false
        }
    }
    
    @IBAction func diceButton(_ sender: UIButton) {
        
        let rolling = randomDiceRoll()
        
        if counting == 0 {
            makeLabel(roll: rolling)
            dots(rolledDice: rolling)
            firstResult.isHidden = false
        } else if counting == 1{
            makeLabel(roll: rolling)
            dots(rolledDice: rolling)
            secondResult.isHidden = false
        } else if counting == 2{
            makeLabel(roll: rolling)
            dots(rolledDice: rolling)
            thirdResult.isHidden = false
        } else if counting == 3{
            makeLabel(roll: rolling)
            dots(rolledDice: rolling)
            fourthResult.isHidden = false
        } else if counting == 4{
            makeLabel(roll: rolling)
            dots(rolledDice: rolling)
            fifthResult.isHidden = false
        } else if counting == 5{
            makeLabel(roll: rolling)
            dots(rolledDice: rolling)
            sixthResult.isHidden = false
        } else if counting == 6{
            hideResult()
            hideAll()
            hideLabels()
            counting = 0
        }
        
        
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideResult()
        hideAll()
        hideLabels()
        
    }
    
}
