//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for diceEye in diceEyes {
            diceEye.isHidden = true
            diceCube.backgroundColor = nil
        }
        for boxScore in colorBlocksScore {
            boxScore.isHidden = true
        }
        EndGameLabel.text = "Click on the dice to roll! You have six tries to get the most points. Good luck!!"
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        EndGameLabel.text = nil
        rollCount += 1
        diceCube.backgroundColor = UIColor.white
        let numberRolled = randomDiceRoll()
        score += numberRolled
        upDateDice(withNumber: numberRolled, withDice: diceEyes)
        upDateScoreBoxes(withNumber: numberRolled, andBoxes: colorBlocksScore, withRollCount: rollCount)
        if rollCount > 6 {
            restartGameAll(diceEyes: diceEyes, scoreBoxes: colorBlocksScore)
            rollCount = 0
            diceCube.backgroundColor = nil
            upDateEndGameLabel(withLabel: EndGameLabel, withScore: score)
            score = 0
        }
    }
    @IBOutlet var diceEyes: [UIView]!
    
    @IBOutlet var colorBlocksScore: [UILabel]!
    
    @IBOutlet weak var diceCube: UIView!
    
    @IBOutlet weak var EndGameLabel: UILabel!
    
    var rollCount = 0
    
    var score = 0
}

// Returns back a random Int (1, 2, 3, 4, 5, or 6)
func randomDiceRoll() -> Int {
    return Int(arc4random_uniform(6) + 1)
    
}
func restartGameAll(diceEyes dice: [UIView], scoreBoxes scores: [UILabel]){
    for diceEye in dice {
        diceEye.isHidden = true
    }
    for box in scores {
        box.text = ""
        box.isHidden = true
    }

}
func upDateEndGameLabel(withLabel label: UILabel, withScore score: Int){
    label.text = "You scored a total of \(score) points. Click the dice to start a new game.!"
}
func upDateDice(withNumber number: Int, withDice dice: [UIView]){
    switch number{
        case 1:
            dice[0].isHidden = true
            dice[1].isHidden = true
            dice[2].isHidden = true
            dice[3].isHidden = false
            dice[4].isHidden = true
            dice[5].isHidden = true
            dice[6].isHidden = true
        case 2:
            dice[0].isHidden = true
            dice[1].isHidden = false
            dice[2].isHidden = true
            dice[3].isHidden = true
            dice[4].isHidden = true
            dice[5].isHidden = false
            dice[6].isHidden = true
        case 3:
            dice[0].isHidden = true
            dice[1].isHidden = true
            dice[2].isHidden = false
            dice[3].isHidden = false
            dice[4].isHidden = false
            dice[5].isHidden = true
            dice[6].isHidden = true
        case 4:
            dice[0].isHidden = false
            dice[1].isHidden = false
            dice[2].isHidden = true
            dice[3].isHidden = true
            dice[4].isHidden = true
            dice[5].isHidden = false
            dice[6].isHidden = false
        case 5:
            dice[0].isHidden = false
            dice[1].isHidden = false
            dice[2].isHidden = true
            dice[3].isHidden = false
            dice[4].isHidden = true
            dice[5].isHidden = false
            dice[6].isHidden = false
        case 6:
            dice[0].isHidden = false
            dice[1].isHidden = false
            dice[2].isHidden = false
            dice[3].isHidden = true
            dice[4].isHidden = false
            dice[5].isHidden = false
            dice[6].isHidden = false
        default:
            return
    }
}
func upDateScoreBoxes(withNumber number: Int,  andBoxes boxes: [UILabel], withRollCount count: Int){
    switch count{
    case 1:
        boxes[0].backgroundColor = UIColor.red
        boxes[0].text = "\(number)"
        boxes[0].isHidden = false
    case 2:
        boxes[1].backgroundColor = UIColor.brown
        boxes[1].text = "\(number)"
        boxes[1].isHidden = false
    case 3:
        boxes[2].backgroundColor = UIColor.green
        boxes[2].text = "\(number)"
        boxes[2].isHidden = false
    case 4:
        boxes[3].backgroundColor = UIColor.blue
        boxes[3].text = "\(number)"
        boxes[3].isHidden = false
    case 5:
        boxes[4].backgroundColor = UIColor.white
        boxes[4].text = "\(number)"
        boxes[4].isHidden = false
    case 6:
        boxes[5].backgroundColor = UIColor.yellow
        boxes[5].text = "\(number)"
        boxes[5].isHidden = false
    default:
        return
    }

    
    
    
}











