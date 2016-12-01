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
        
        //Hide dice tiles and score labels
        die__1.isHidden = true
        die__2.isHidden = true
        die__3.isHidden = true
        die__4.isHidden = true
        die__5.isHidden = true
        die__6.isHidden = true
        
        result_1.isHidden = true
        result_2.isHidden = true
        result_3.isHidden = true
        result_4.isHidden = true
        result_5.isHidden = true
        result_6.isHidden = true
        
        nattyMessage.isHidden = true
        
    }
    
    //Hook up dice tiles and score labels
    @IBOutlet weak var animation: UIImageView!
    
    
    @IBOutlet weak var die__1: UIImageView!
    
    @IBOutlet weak var die__2: UIImageView!
    
    @IBOutlet weak var die__3: UIImageView!
    
    @IBOutlet weak var die__4: UIImageView!
    
    @IBOutlet weak var die__5: UIImageView!
    
    @IBOutlet weak var die__6: UIImageView!
    
    
    @IBOutlet weak var result_1: UILabel!
    
    @IBOutlet weak var result_2: UILabel!
    
    @IBOutlet weak var result_3: UILabel!
    
    @IBOutlet weak var result_4: UILabel!
    
    @IBOutlet weak var result_5: UILabel!

    @IBOutlet weak var result_6: UILabel!
    
    
    @IBOutlet weak var nattyMessage: UILabel!
    
    
    //die has been tapped. Let's roll!
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let rollValue = Int(randomDiceRoll())
        
        showDiceTiles(roll: rollValue)
        
        updateLabelWithRoll(roll: rollValue)
        
    }
    
    
    //Show relevant dice tiles
    func showDiceTiles(roll: Int) {
        
        let diceScore = Int(roll)
        
        nattyMessage.isHidden = true
        
        switch diceScore {
            case 1:
                die__1.isHidden = false
                die__2.isHidden = true
                die__3.isHidden = true
                die__4.isHidden = true
                die__5.isHidden = true
                die__6.isHidden = true
            
            case 2:
                die__1.isHidden = true
                die__2.isHidden = false
                die__3.isHidden = true
                die__4.isHidden = true
                die__5.isHidden = true
                die__6.isHidden = true
            
            case 3:
                die__1.isHidden = true
                die__2.isHidden = true
                die__3.isHidden = false
                die__4.isHidden = true
                die__5.isHidden = true
                die__6.isHidden = true
            
            case 4:
                die__1.isHidden = true
                die__2.isHidden = true
                die__3.isHidden = true
                die__4.isHidden = false
                die__5.isHidden = true
                die__6.isHidden = true
            
            case 5:
                die__1.isHidden = true
                die__2.isHidden = true
                die__3.isHidden = true
                die__4.isHidden = true
                die__5.isHidden = false
                die__6.isHidden = true
            
            default:
                die__1.isHidden = true
                die__2.isHidden = true
                die__3.isHidden = true
                die__4.isHidden = true
                die__5.isHidden = true
                die__6.isHidden = false
                
                nattyMessage.isHidden = false
            
        }
        
    }
    
    //Update the labels with the relevant new score
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        print("dice score = \(diceScore)")
        
        if result_1.isHidden {
            result_1.text = diceScore
            result_1.isHidden = false
        }
        else {
            if result_2.isHidden {
                result_2.text = diceScore
                result_2.isHidden = false
            }
            else {
                if result_3.isHidden {
                    result_3.text = diceScore
                    result_3.isHidden = false
                }
                else {
                    if result_4.isHidden {
                        result_4.text = diceScore
                        result_4.isHidden = false
                    }
                    else {
                        if result_5.isHidden {
                            result_5.text = diceScore
                            result_5.isHidden = false
                        }
                        else {
                            if result_6.isHidden {
                                result_6.text = diceScore
                                result_6.isHidden = false
                            }
                            else {
                                //All score labels have already appeared so let's remove all and start again from label 1
                                 result_2.isHidden = true
                                 result_3.isHidden = true
                                 result_4.isHidden = true
                                 result_5.isHidden = true
                                 result_6.isHidden = true
                                 result_1.text = diceScore
                                
                            }
                        }
                    }
                }
            }
        }
        

        
    }

    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
