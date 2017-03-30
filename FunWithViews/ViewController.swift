
//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


  import UIKit
  
  class ViewController: UIViewController {
    
// variables & Bool
    
    var rearrangeDie: Bool = false
    var colorLabel = 1
    
// UIViews (7 black squares)
    
    @IBOutlet weak var upperLeftView: UIView!
    
    @IBOutlet weak var upperRightView: UIView!
    
    @IBOutlet weak var midLeftView: UIView!
    
    @IBOutlet weak var midCenterView: UIView!
    
    @IBOutlet weak var midRightView: UIView!
    
    @IBOutlet weak var bottomLeftView: UIView!
    
    @IBOutlet weak var bottomRightView: UIView!
    

// UILabels (6 colored squares)
   
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
// ViewDidLoad (all black squares and colored labels hidden)
    
    override func viewDidLoad() {
      super.viewDidLoad()
      
      upperLeftView.isHidden = true
      upperRightView.isHidden = true
      midLeftView.isHidden = true
      midCenterView.isHidden = true
      midRightView.isHidden = true
      bottomLeftView.isHidden = true
      bottomRightView.isHidden = true
      
      redLabel.isHidden = true
      orangeLabel.isHidden = true
      yellowLabel.isHidden = true
      greenLabel.isHidden = true
      blueLabel.isHidden = true
      purpleLabel.isHidden = true
    }
    
// dice Button object
    
    @IBAction func diceButtonTapped(_ sender: AnyObject) {
      upperLeftView.isHidden = true
      upperRightView.isHidden = true
      midLeftView.isHidden = true
      midCenterView.isHidden = true
      midRightView.isHidden = true
      bottomLeftView.isHidden = true
      bottomRightView.isHidden = true
      
// constants
      
      let rollDice = randomDiceRoll()
      let connectedSquares = showBlackSquares(number: rollDice)
      for blackSquare in connectedSquares {
          blackSquare.isHidden = false
      }
      updateLabelWithRoll(roll: rollDice)
    }
    
// Function that Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
      return Int(arc4random_uniform(6) + 1)
    }
    
// Function that shows correct Black squares when rolling Dice
    
    func showBlackSquares(number: Int) -> [UIView] {
      
// Variable, Array Element & Hash table
      
      var num = Dictionary<Int, Array<UIView>>()
      num[1] = [midCenterView]
      num[2] = [upperRightView, bottomLeftView]
      num[3] = [upperRightView, midCenterView, bottomLeftView]
      num[4] = [upperRightView, bottomRightView, upperLeftView, bottomLeftView]
      num[5] = [upperRightView, bottomRightView, midCenterView, upperLeftView, bottomLeftView]
      num[6] = [upperRightView, bottomRightView, midRightView, midLeftView, upperLeftView, bottomLeftView]
      
      return num[number]!
    }
    
// Function that Update labels
    
    func updateLabelWithRoll(roll: Int) {
// Constant
      
     let diceScore = String(roll)
      
// Conditionals
      
      if (!rearrangeDie) {
        
          if redLabel.isHidden {
          redLabel.text = diceScore
          redLabel.isHidden = false
        } else if orangeLabel.isHidden {
          orangeLabel.text = diceScore
          orangeLabel.isHidden = false
        } else if yellowLabel.isHidden {
          yellowLabel.text = diceScore
          yellowLabel.isHidden = false
        } else if greenLabel.isHidden {
          greenLabel.text = diceScore
          greenLabel.isHidden = false
        } else if blueLabel.isHidden {
          blueLabel.text = diceScore
          blueLabel.isHidden = false
        } else if purpleLabel.isHidden {
          purpleLabel.text = diceScore
          purpleLabel.isHidden = false
        }
         else {
        
//  Switch statement
        
          switch colorLabel {
        case 1:
          redLabel.text = diceScore
        case 2:
          orangeLabel.text = diceScore
        case 3:
          yellowLabel.text = diceScore
        case 4:
          greenLabel.text = diceScore
        case 5:
          blueLabel.text = diceScore
        case 6:
          purpleLabel.text = diceScore
          
 // Default presence in Switch
            
        default:
          rearrangeDie = false
          
        }
      }
    }
  }
}
