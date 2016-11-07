//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //large squares
    @IBOutlet weak var diOutlet00: UIView!
    @IBOutlet weak var diOutlet01: UIView!
    @IBOutlet weak var diOutlet02: UIView!
    @IBOutlet weak var diOutlet03: UIView!
    @IBOutlet weak var diOutlet04: UIView!
    @IBOutlet weak var diOutlet05: UIView!
    @IBOutlet weak var diOutlet06: UIView!
    
    //smaller squares
    @IBOutlet weak var labelRoll00: UILabel!
    @IBOutlet weak var labelRoll01: UILabel!
    @IBOutlet weak var labelRoll02: UILabel!
    @IBOutlet weak var labelRoll03: UILabel!
    @IBOutlet weak var labelRoll04: UILabel!
    @IBOutlet weak var labelRoll05: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //func for EZ reset of di face to hidden so each roll gets fresh start
        resetDiFace()
        
        //hide labels no func since only used once
        labelRoll00.isHidden = true
        labelRoll01.isHidden = true
        labelRoll02.isHidden = true
        labelRoll03.isHidden = true
        labelRoll04.isHidden = true
        labelRoll05.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
    
        var rollTheDice:Int
        rollTheDice = randomDiceRoll()
    
    updateLabelWithRoll(roll: rollTheDice)
    showDi(diValue: rollTheDice)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll:Int){
        let diceScore = String(roll)
        
        if labelRoll00.isHidden{
            labelRoll00.text = diceScore
            labelRoll00.isHidden = false
            
        }else if labelRoll01.isHidden{
            labelRoll01.text = diceScore
            labelRoll01.isHidden = false
            
        }else if labelRoll02.isHidden{
            labelRoll02.text = diceScore
            labelRoll02.isHidden = false
        }else if labelRoll03.isHidden{
            labelRoll03.text = diceScore
            labelRoll03.isHidden = false
            
        }else if labelRoll04.isHidden{
            labelRoll04.text = diceScore
            labelRoll04.isHidden = false
            
        }else if labelRoll05.isHidden{
                labelRoll05.text = diceScore
                labelRoll05.isHidden = false
            }
        }
    
    func showDi(diValue:Int){
        resetDiFace()
        
        
        switch true {
        case diValue == 1:
            diOutlet03.isHidden = false
        case diValue == 2:
            diOutlet01.isHidden = false
            diOutlet05.isHidden = false
        case diValue == 3:
            diOutlet01.isHidden = false
            diOutlet03.isHidden = false
            diOutlet05.isHidden = false
        case diValue == 4:
            diOutlet00.isHidden = false
            diOutlet01.isHidden = false
            diOutlet05.isHidden = false
            diOutlet06.isHidden = false
        case diValue == 5:
            diOutlet00.isHidden = false
            diOutlet01.isHidden = false
            diOutlet03.isHidden = false
            diOutlet05.isHidden = false
            diOutlet06.isHidden = false
        case diValue == 6:
            diOutlet00.isHidden = false
            diOutlet01.isHidden = false
            diOutlet02.isHidden = false
            diOutlet04.isHidden = false
            diOutlet05.isHidden = false
            diOutlet06.isHidden = false
        default:
           resetDiFace()

        }
    }
    //func for EZ reset of di face to hidden
    func resetDiFace(){
        diOutlet00.isHidden = true
        diOutlet01.isHidden = true
        diOutlet02.isHidden = true
        diOutlet03.isHidden = true
        diOutlet04.isHidden = true
        diOutlet05.isHidden = true
        diOutlet06.isHidden = true
        
    }
        
    

}

