//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstSquare: UIView!
    @IBOutlet weak var secondSquare: UIView!
    @IBOutlet weak var thirdSquare: UIView!
    @IBOutlet weak var fourthSquare: UIView!
    @IBOutlet weak var fifthSquare: UIView!
    @IBOutlet weak var sixthSquare: UIView!
    @IBOutlet weak var seventhSquare: UIView!
    
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var scoreLabel3: UILabel!
    @IBOutlet weak var scoreLabel4: UILabel!
    @IBOutlet weak var scoreLabel5: UILabel!
    @IBOutlet weak var scoreLabel6: UILabel!
    
    override func viewDidLoad() {
        firstSquare.isHidden = true
        secondSquare.isHidden = true
        thirdSquare.isHidden = true
        fourthSquare.isHidden = true
        fifthSquare.isHidden = true
        sixthSquare.isHidden = true
        seventhSquare.isHidden = true
        
        scoreLabel1.isHidden = true
        scoreLabel2.isHidden = true
        scoreLabel3.isHidden = true
        scoreLabel4.isHidden = true
        scoreLabel5.isHidden = true
        scoreLabel6.isHidden = true
        
        super.viewDidLoad()
    }
    
    func rearrangeDie(roll: Int){
    
        switch roll {
            case 1:
                firstSquare.isHidden = true
                secondSquare.isHidden = true
                thirdSquare.isHidden = true
                fourthSquare.isHidden = false
                fifthSquare.isHidden = true
                sixthSquare.isHidden = true
                seventhSquare.isHidden = true
            case 2:
                firstSquare.isHidden = false
                secondSquare.isHidden = true
                thirdSquare.isHidden = true
                fourthSquare.isHidden = true
                fifthSquare.isHidden = true
                sixthSquare.isHidden = true
                seventhSquare.isHidden = false
            case 3:
                firstSquare.isHidden = false
                secondSquare.isHidden = true
                thirdSquare.isHidden = true
                fourthSquare.isHidden = false
                fifthSquare.isHidden = true
                sixthSquare.isHidden = true
                seventhSquare.isHidden = false
            case 4:
                firstSquare.isHidden = false
                secondSquare.isHidden = true
                thirdSquare.isHidden = false
                fourthSquare.isHidden = true
                fifthSquare.isHidden = false
                sixthSquare.isHidden = true
                seventhSquare.isHidden = false
            case 5:
                firstSquare.isHidden = false
                secondSquare.isHidden = true
                thirdSquare.isHidden = false
                fourthSquare.isHidden = false
                fifthSquare.isHidden = false
                sixthSquare.isHidden = true
                seventhSquare.isHidden = false
            case 6:
                firstSquare.isHidden = false
                secondSquare.isHidden = false
                thirdSquare.isHidden = false
                fourthSquare.isHidden = true
                fifthSquare.isHidden = false
                sixthSquare.isHidden = false
                seventhSquare.isHidden = false
        default:
            firstSquare.isHidden = true
            secondSquare.isHidden = true
            thirdSquare.isHidden = true
            fourthSquare.isHidden = true
            fifthSquare.isHidden = true
            sixthSquare.isHidden = true
            seventhSquare.isHidden = true
        }
    }
    
    func updateScore(roll: Int){
        let score = String(roll)
        
        if scoreLabel1.isHidden {
            scoreLabel1.text = score
            scoreLabel1.isHidden = false
        } else if  scoreLabel2.isHidden {
            scoreLabel2.text = score
            scoreLabel2.isHidden = false
        } else if scoreLabel3.isHidden{
            scoreLabel3.text = score
            scoreLabel3.isHidden = false
        } else if scoreLabel4.isHidden {
            scoreLabel4.text = score
            scoreLabel4.isHidden = false
        } else if scoreLabel5.isHidden {
            scoreLabel5.text = score
            scoreLabel5.isHidden = false
        } else if scoreLabel6.isHidden {
            scoreLabel6.text = score
            scoreLabel6.isHidden = false
        } else if !(scoreLabel6.isHidden) {
            scoreLabel1.text = score
            scoreLabel2.isHidden = true
            scoreLabel3.isHidden = true
            scoreLabel4.isHidden = true
            scoreLabel5.isHidden = true
            scoreLabel6.isHidden = true
        }
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let number = randomDiceRoll()
        rearrangeDie(roll: number)
        updateScore(roll: number)

        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
