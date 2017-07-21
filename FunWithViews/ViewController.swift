//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

    @IBOutlet weak var Die1: UIView!
    @IBOutlet weak var Die2: UIView!
    @IBOutlet weak var Die3: UIView!
    @IBOutlet weak var Die4: UIView!
    @IBOutlet weak var Die5: UIView!
    @IBOutlet weak var Die6: UIView!
    @IBOutlet weak var Die7: UIView!
    
    @IBOutlet weak var correctNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Die1.isHidden = true
        Die2.isHidden = true
        Die3.isHidden = true
        Die4.isHidden = true
        Die5.isHidden = true
        Die6.isHidden = true
        Die7.isHidden = true
        correctNumber.isHidden = true

    }
    func randomDiceRoll() -> Int {
       // print(Int(arc4random_uniform(6) + 1))
        return Int(arc4random_uniform(6) + 1)
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)



    func correctNumberDisplay() {
        correctNumber.isHidden = false
       return correctNumber.text = "\(randomDiceRoll())"
    }
    func whatDie(){
        
        if randomDiceRoll() == 1 {
            Die4.isHidden = false
            
        } else if randomDiceRoll() == 2 {
            Die3.isHidden = false
            Die5.isHidden = false
            
        } else if randomDiceRoll() == 3 {
            Die3.isHidden = false
            Die4.isHidden = false
            Die5.isHidden = false
            
        } else if randomDiceRoll() == 4 {
            Die1.isHidden = false
            Die3.isHidden = false
            Die5.isHidden = false
            Die7.isHidden = false
            
        }else if randomDiceRoll() == 5 {
            Die1.isHidden = false
            Die3.isHidden = false
            Die4.isHidden = false
            Die5.isHidden = false
            Die7.isHidden = false
            
        }else if randomDiceRoll() == 6 {
            Die1.isHidden = false
            Die2.isHidden = false
            Die3.isHidden = false
            Die5.isHidden = false
            Die6.isHidden = false
            Die7.isHidden = false
            
        }
    }
    
    @IBAction func buttonPress(_ sender: Any) {
      //  randomDiceRoll()
        whatDie()
        //correctNumberDisplay()
        //viewDidLoad()
        
    }
    @IBAction func rollAgain(_ sender: Any) {
        viewDidLoad()
    }
}
