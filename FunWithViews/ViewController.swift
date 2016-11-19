//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var BRDie: UIView!
  @IBOutlet weak var MRDie: UIView!
  @IBOutlet weak var TRDie: UIView!
  @IBOutlet weak var MDie: UIView!
  @IBOutlet weak var BLDie: UIView!
  @IBOutlet weak var MLDie: UIView!
  @IBOutlet weak var TLDie: UIView!


  @IBOutlet weak var SixthRoll: UILabel!
  @IBOutlet weak var FifthRoll: UILabel!
  @IBOutlet weak var FourthRoll: UILabel!
  @IBOutlet weak var ThirdRoll: UILabel!
  @IBOutlet weak var SecondRoll: UILabel!
  @IBOutlet weak var FirstRoll: UILabel!
  var rollCount = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstRoll.text = ""
        SecondRoll.text = ""
        ThirdRoll.text = ""
        FourthRoll.text = ""
        FifthRoll.text = ""
        SixthRoll.text = ""
      
        TRDie.isHidden = true
        MRDie.isHidden = true
        BRDie.isHidden = true
        TLDie.isHidden = true
        MLDie.isHidden = true
        BLDie.isHidden = true
        MDie.isHidden = true
      
      
      
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
      rollCount = rollCount+1
      let dieRoll = randomDiceRoll()
      TRDie.isHidden = true
      MRDie.isHidden = true
      BRDie.isHidden = true
      TLDie.isHidden = true
      MLDie.isHidden = true
      BLDie.isHidden = true
      MDie.isHidden = true
      
      switch dieRoll{
        case 1:
          MDie.isHidden = false
        case 2:
          TLDie.isHidden = false
          BRDie.isHidden = false
        case 3:
          TLDie.isHidden = false
          BRDie.isHidden = false
          MDie.isHidden = false
        case 4:
          TLDie.isHidden = false
          BRDie.isHidden = false
          TRDie.isHidden = false
          BLDie.isHidden = false
        case 5:
          TLDie.isHidden = false
          BRDie.isHidden = false
          TRDie.isHidden = false
          BLDie.isHidden = false
          MDie.isHidden = false
        case 6:
          TLDie.isHidden = false
          BRDie.isHidden = false
          TRDie.isHidden = false
          BLDie.isHidden = false
          MRDie.isHidden = false
          MLDie.isHidden = false
        default:
          print("Die")
      }
      
      switch rollCount{
      case 1:
        FirstRoll.text = String(dieRoll)
      case 2:
        SecondRoll.text = String(dieRoll)
      case 3:
        ThirdRoll.text = String(dieRoll)
      case 4:
        FourthRoll.text = String(dieRoll)
      case 5:
        FifthRoll.text = String(dieRoll)
      case 6:
        SixthRoll.text = String(dieRoll)
      default:
        print("End Game")
      }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
