//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var blackLeftTop: UIView!
  @IBOutlet weak var blackLeftMiddle: UIView!
  @IBOutlet weak var blackLeftBottom: UIView!
  @IBOutlet weak var blackMiddle: UIView!
  @IBOutlet weak var blackRightTop: UIView!
  @IBOutlet weak var blackRightMiddle: UIView!
  @IBOutlet weak var blackRightBottom: UIView!
  
  @IBOutlet weak var labelRed: UILabel!
  @IBOutlet weak var labelOrange: UILabel!
  @IBOutlet weak var labelYellow: UILabel!
  @IBOutlet weak var labelGreen: UILabel!
  @IBOutlet weak var labelBlue: UILabel!
  @IBOutlet weak var labelPurple: UILabel!
  
  var numberOfRolls = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    clearDrawing()
  }
  
  func clearDrawing() {
    blackLeftTop.isHidden = true
    blackLeftMiddle.isHidden = true
    blackLeftBottom.isHidden = true
    blackMiddle.isHidden = true
    blackRightTop.isHidden = true
    blackRightMiddle.isHidden = true
    blackRightBottom.isHidden = true
  }
  
  
  func updateDie(roll: Int) {

    clearDrawing()
    
    switch roll {
    case 1:
      blackMiddle.isHidden = false
    case 2:
      blackLeftTop.isHidden = false
      blackRightBottom.isHidden = false
    case 3:
      blackLeftBottom.isHidden = false
      blackMiddle.isHidden = false
      blackRightTop.isHidden = false
    case 4:
      blackLeftTop.isHidden = false
      blackLeftBottom.isHidden = false
      blackRightTop.isHidden = false
      blackRightBottom.isHidden = false
    case 5:
      blackLeftTop.isHidden = false
      blackLeftBottom.isHidden = false
      blackRightTop.isHidden = false
      blackRightBottom.isHidden = false
      blackMiddle.isHidden = false
    case 6:
      blackLeftTop.isHidden = false
      blackLeftMiddle.isHidden = false
      blackLeftBottom.isHidden = false
      blackRightTop.isHidden = false
      blackRightMiddle.isHidden = false
      blackRightBottom.isHidden = false
    default:
      break
    }
  }
  
  func updateNumber(roll: Int) {
    switch numberOfRolls % 6 {
    case 1:
      labelRed.text = String(roll)
    case 2:
      labelOrange.text = String(roll)
    case 3:
      labelYellow.text = String(roll)
    case 4:
      labelGreen.text = String(roll)
    case 5:
      labelBlue.text = String(roll)
    case 0:
      labelPurple.text = String(roll)
    default:
      break
    }
  }
  
  @IBAction func dieButtonTapped(_ sender: AnyObject) {
    let roll = randomDiceRoll()
    numberOfRolls += 1
    
    print("Rolled \(roll) in roll number \(numberOfRolls)")
    
    updateDie(roll: roll)
    updateNumber(roll: roll)
  }
  
  // Returns back a random Int (1, 2, 3, 4, 5, or 6)
  func randomDiceRoll() -> Int {
    return Int(arc4random_uniform(6) + 1)
  }
  
}
