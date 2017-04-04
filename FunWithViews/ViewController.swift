//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var eye_0: UILabel!
  @IBOutlet weak var eye_1: UILabel!
  @IBOutlet weak var eye_2: UILabel!
  @IBOutlet weak var eye_3: UILabel!
  @IBOutlet weak var eye_4: UILabel!
  @IBOutlet weak var eye_5: UILabel!
  @IBOutlet weak var eye_6: UILabel!
  
  @IBOutlet weak var roll_1: UILabel!
  @IBOutlet weak var roll_2: UILabel!
  @IBOutlet weak var roll_3: UILabel!
  @IBOutlet weak var roll_4: UILabel!
  @IBOutlet weak var roll_5: UILabel!
  @IBOutlet weak var roll_6: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    hideDice()
    
    clearScores()
    
  }
  
  @IBAction func dieButtonTapped(_ sender: AnyObject) {
    
    hideDice()
    
    let result = randomDiceRoll()
    
    showDice(result)
    
    showScore(result)

  }
  
  // Returns back a random Int (1, 2, 3, 4, 5, or 6)
  func randomDiceRoll() -> Int {
    return Int(arc4random_uniform(6) + 1)
  }

  private func showDice(_ num: Int) {
    switch num {
    case 1:
      eye_0.isHidden = false
    case 2:
      eye_2.isHidden = false
      eye_5.isHidden = false
    case 3:
      eye_0.isHidden = false
      eye_2.isHidden = false
      eye_5.isHidden = false
    case 4:
      eye_1.isHidden = false
      eye_2.isHidden = false
      eye_5.isHidden = false
      eye_6.isHidden = false
    case 5:
      eye_0.isHidden = false
      eye_1.isHidden = false
      eye_2.isHidden = false
      eye_5.isHidden = false
      eye_6.isHidden = false
    case 6:
      eye_1.isHidden = false
      eye_2.isHidden = false
      eye_3.isHidden = false
      eye_4.isHidden = false
      eye_5.isHidden = false
      eye_6.isHidden = false
    default:
      hideDice()
    }
  }
  
  private func clearScores() {
    roll_1.text = ""
    roll_2.text = ""
    roll_3.text = ""
    roll_4.text = ""
    roll_5.text = ""
    roll_6.text = ""
  }
  
  private func hideDice() {
    
//    diceFace.isHidden = true
    
    eye_0.isHidden = true
    eye_1.isHidden = true
    eye_2.isHidden = true
    eye_3.isHidden = true
    eye_4.isHidden = true
    eye_5.isHidden = true
    eye_6.isHidden = true
  }
  
  private func showScore(_ score: Int) {
    
    struct Rolls {
      static var turn: Int = 0
    }
    
    if Rolls.turn == 6 {
      clearScores()
      Rolls.turn = 0
    }
    
    switch Rolls.turn {
    case 0:
      roll_1.text = String(score)
    case 1:
      roll_2.text = String(score)
    case 2:
      roll_3.text = String(score)
    case 3:
      roll_4.text = String(score)
    case 4:
      roll_5.text = String(score)
    case 5:
      roll_6.text = String(score)
    default:
      clearScores()
    }
    
    Rolls.turn += 1
  }
}
