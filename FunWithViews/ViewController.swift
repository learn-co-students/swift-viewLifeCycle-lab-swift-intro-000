//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var collectionOfScores:[UILabel]!
    @IBOutlet var collectionOfBlocks:[UIView]!
    var arrayOfBlocks: NSMutableArray = []
    var rollCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let arrayOfBlocks: NSArray = []
        for i in 0..<7 {
            arrayOfBlocks[i] = collectionOfBlocks[i]
        }
        
        // hide block and score views initially
        for score in collectionOfScores {
            score.isHidden = true
        }
        
        for block in collectionOfBlocks {
            block.isHidden = true
        }
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if rollCount == 6 {
            rollCount = 0
            resetScoreLabels()
        }
        
        let roll: Int = randomDiceRoll()
        rearrangeDie(roll: roll)
        updateScore(roll: roll)
       
        rollCount += 1
    }
    
    func rearrangeDie (roll: Int) {
        for i in 0..<7 {
            (arrayOfBlocks[i] as! UIView).isHidden = true
        }

        switch roll {
        case 1:
           (arrayOfBlocks[3] as! UIView).isHidden = false
        case 2:
           (arrayOfBlocks[0] as! UIView).isHidden = false
           (arrayOfBlocks[4] as! UIView).isHidden = false
        case 3:
           (arrayOfBlocks[0] as! UIView).isHidden = false
           (arrayOfBlocks[3] as! UIView).isHidden = false
           (arrayOfBlocks[5] as! UIView).isHidden = false
        case 4:
           (arrayOfBlocks[0] as! UIView).isHidden = false
           (arrayOfBlocks[1] as! UIView).isHidden = false
           (arrayOfBlocks[6] as! UIView).isHidden = false
           (arrayOfBlocks[5] as! UIView).isHidden = false
        case 5:
           (arrayOfBlocks[0] as! UIView).isHidden = false
           (arrayOfBlocks[1] as! UIView).isHidden = false
           (arrayOfBlocks[3] as! UIView).isHidden = false
           (arrayOfBlocks[6] as! UIView).isHidden = false
           (arrayOfBlocks[5] as! UIView).isHidden = false
        case 6:
           (arrayOfBlocks[0] as! UIView).isHidden = false
           (arrayOfBlocks[1] as! UIView).isHidden = false
           (arrayOfBlocks[2] as! UIView).isHidden = false
           (arrayOfBlocks[4] as! UIView).isHidden = false
           (arrayOfBlocks[5] as! UIView).isHidden = false
           (arrayOfBlocks[6] as! UIView).isHidden = false
          
        default: print("error")
        }
    }
    
    func updateScore (roll: Int) {

        if collectionOfScores[rollCount].isHidden == true {
            collectionOfScores[rollCount].text = String(roll)
            collectionOfScores[rollCount].isHidden = false
        }
    }
    
    func resetScoreLabels() {
        for score in collectionOfScores {
            score.isHidden = true
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
