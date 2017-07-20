//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Labels
    @IBOutlet weak var diceOne: UILabel!
    @IBOutlet weak var diceTwo: UILabel!
    @IBOutlet weak var diceThree: UILabel!
    @IBOutlet weak var diceFour: UILabel!
    @IBOutlet weak var diceFive: UILabel!
    @IBOutlet weak var diceSix: UILabel!
    //Cubes
    @IBOutlet weak var cubeOne: UIView!
    @IBOutlet weak var cubeTwo: UIView!
    @IBOutlet weak var cubeThree: UIView!
    @IBOutlet weak var cubeFour: UIView!
    @IBOutlet weak var cubeFive: UIView!
    @IBOutlet weak var cubeSix: UIView!
    @IBOutlet weak var cubeSeven: UIView!
    
    func hideEverything(){
        //Hide all dice labels
        diceOne.isHidden = true
        diceTwo.isHidden = true
        diceThree.isHidden = true
        diceFour.isHidden = true
        diceFive.isHidden = true
        diceSix.isHidden = true
        
        //Hide all cubes
        cubeOne.isHidden = true
        cubeTwo.isHidden = true
        cubeThree.isHidden = true
        cubeFour.isHidden = true
        cubeFive.isHidden = true
        cubeSix.isHidden = true
        cubeSeven.isHidden = true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        hideEverything()
    }
    
   
    
    func updateLabelWithRoll(roll: Int){
        let diceScore = String(roll)
        
        if diceOne.isHidden{
            diceOne.text = diceScore
            diceOne.isHidden = false
        } else if diceTwo.isHidden{
            diceTwo.text = diceScore
            diceTwo.isHidden = false
        } else if diceThree.isHidden{
            diceThree.text = diceScore
            diceThree.isHidden = false
        } else if diceFour.isHidden{
            diceFour.text = diceScore
            diceFour.isHidden = false
        } else if diceFive.isHidden{
            diceFive.text = diceScore
            diceFive.isHidden = false
        } else if diceSix.isHidden{
            diceSix.text = diceScore
            diceSix.isHidden = false
        }
    }
    
    func rearrangeDie(roll: Int){
        switch roll{
        case 1:
            cubeOne.isHidden = false
            cubeTwo.isHidden  = true
            cubeThree.isHidden = true
            cubeFour.isHidden = true
            cubeFive.isHidden = true
            cubeSix.isHidden = true
            
        case 2:
            cubeOne.isHidden = false
            cubeTwo.isHidden = false
            cubeThree.isHidden = true
            cubeFour.isHidden = true
            cubeFive.isHidden = true
            cubeSix.isHidden = true
            
        case 3:
            cubeOne.isHidden = false
            cubeTwo.isHidden = false
            cubeThree.isHidden = false
            cubeFour.isHidden = true
            cubeFive.isHidden = true
            cubeSix.isHidden = true
            
        case 4:
            cubeOne.isHidden = false
            cubeTwo.isHidden = false
            cubeThree.isHidden = false
            cubeFour.isHidden = false
            cubeFive.isHidden = true
            cubeSix.isHidden = true
            
        case 5:
            cubeOne.isHidden = false
            cubeTwo.isHidden = false
            cubeThree.isHidden = false
            cubeFour.isHidden = false
            cubeFive.isHidden = false
            cubeSix.isHidden = true
            
        case 6:
            cubeOne.isHidden = false
            cubeTwo.isHidden = false
            cubeThree.isHidden = false
            cubeFour.isHidden = false
            cubeFive.isHidden = false
            cubeSix.isHidden = false
        default:
            cubeOne.isHidden = true
            cubeTwo.isHidden = true
            cubeThree.isHidden = true
            cubeFour.isHidden = true
            cubeFive.isHidden = true
            cubeSix.isHidden = true
        }
    }
    
   
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
   
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let randomRollPressed = randomDiceRoll()
        updateLabelWithRoll(roll: randomRollPressed)
        rearrangeDie(roll: randomRollPressed)
        
    }

}
