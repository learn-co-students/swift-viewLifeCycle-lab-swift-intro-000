//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dice.isHidden = false
        one.isHidden = true
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        seven.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
        playAgain.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let value = randomDiceRoll()
        if playAgain.isHidden {
            switch value {
            case 1:
                one.isHidden = true
                two.isHidden = true
                three.isHidden = true
                four.isHidden = false
                five.isHidden = true
                six.isHidden = true
                seven.isHidden = true
            case 2:
                one.isHidden = true
                two.isHidden = true
                three.isHidden = true
                four.isHidden = false
                five.isHidden = true
                six.isHidden = true
                seven.isHidden = false
            case 3:
                one.isHidden = true
                two.isHidden = false
                three.isHidden = true
                four.isHidden = false
                five.isHidden = true
                six.isHidden = false
                seven.isHidden = true
            case 4:
                one.isHidden = false
                two.isHidden = false
                three.isHidden = true
                four.isHidden = true
                five.isHidden = true
                six.isHidden = false
                seven.isHidden = false
            case 5:
                one.isHidden = false
                two.isHidden = false
                three.isHidden = true
                four.isHidden = false
                five.isHidden = true
                six.isHidden = false
                seven.isHidden = false
            default:
                one.isHidden = false
                two.isHidden = false
                three.isHidden = false
                four.isHidden = true
                five.isHidden = false
                six.isHidden = false
                seven.isHidden = false
            }
        }
        
        if playAgain.isHidden {
            if label1.isHidden {
                label1.text = String(value)
                label1.isHidden = false
            }
            else if label2.isHidden {
                label2.text = String(value)
                label2.isHidden = false
            }
            else if label3.isHidden {
                label3.text = String(value)
                label3.isHidden = false
            }
            else if label4.isHidden {
                label4.text = String(value)
                label4.isHidden = false
            }
            else if label5.isHidden {
                label5.text = String(value)
                label5.isHidden = false
            }
            else if label6.isHidden {
                label6.text = String(value)
                label6.isHidden = false
            }
            else {
                viewDidLoad()
                playAgain.isHidden = false
                dice.isHidden = true
            }
        }
    }
    
    //Dice display blocks
    @IBOutlet weak var one: UIView!
    @IBOutlet weak var two: UIView!
    @IBOutlet weak var three: UIView!
    @IBOutlet weak var four: UIView!
    @IBOutlet weak var five: UIView!
    @IBOutlet weak var six: UIView!
    @IBOutlet weak var seven: UIView!
    
    //Result labels
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    @IBOutlet weak var dice: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    @IBAction func playAgain(_ sender: AnyObject) {
        viewDidLoad()
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
