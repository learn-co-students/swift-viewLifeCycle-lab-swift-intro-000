//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet var upperLeft: UILabel!
    
    @IBOutlet var upperRight: UILabel!
    
    @IBOutlet var middleLeft: UILabel!
    
    @IBOutlet var middleMiddle: UILabel!
    
    @IBOutlet var middleRight: UILabel!
    
    @IBOutlet var lowerLeft: UILabel!
    
    @IBOutlet var lowerRight: UILabel!
    
    @IBOutlet var redBox: UILabel!
    
    @IBOutlet var orangeBox: UILabel!
    
    @IBOutlet var yellowBox: UILabel!
    
    @IBOutlet var greenBox: UILabel!
    
    @IBOutlet var blueBox: UILabel!
    
    @IBOutlet var purpleBox: UILabel!
    
    func hideAll(){
        upperLeft.isHidden = true
        upperRight.isHidden = true
        upperLeft.isHidden = true
        middleLeft.isHidden = true
        middleMiddle.isHidden = true
        middleRight.isHidden = true
        lowerLeft.isHidden = true
        lowerRight.isHidden = true
        redBox.isHidden = true
        orangeBox.isHidden = true
        yellowBox.isHidden = true
        greenBox.isHidden = true
        blueBox.isHidden = true
        purpleBox.isHidden = true
    }
    
    func hideBlackBoxes(){
        upperLeft.isHidden = true
        upperRight.isHidden = true
        upperLeft.isHidden = true
        middleLeft.isHidden = true
        middleMiddle.isHidden = true
        middleRight.isHidden = true
        lowerLeft.isHidden = true
        lowerRight.isHidden = true
    }
    
    func checkAllBoxes(){
        var count = 0
        if redBox.isHidden == false{
            count += 1
            if orangeBox.isHidden == false {
                count += 1
                if yellowBox.isHidden == false {
                    count += 1
                    if greenBox.isHidden == false {
                        count += 1
                        if blueBox.isHidden == false {
                            count += 1
                            if purpleBox.isHidden == false {
                                count += 1
                             }
                           }
                        }
                    }
                }
            }
            if count == 6{
                hideAll()
            }
        }
    //
    
    func fillTheBox(numm:Int){
        if redBox.isHidden{
            redBox.text = String(numm)
            redBox.isHidden = false
        }else if orangeBox.isHidden {
            orangeBox.text = String(numm)
            orangeBox.isHidden = false
        }else if yellowBox.isHidden {
            yellowBox.text = String(numm)
            yellowBox.isHidden = false
        }else if greenBox.isHidden {
            greenBox.text = String(numm)
            greenBox.isHidden = false
        }else if blueBox.isHidden {
            blueBox.text = String(numm)
            blueBox.isHidden = false
        }else if purpleBox.isHidden {
            purpleBox.text = String(numm)
            purpleBox.isHidden = false
        } else {
            checkAllBoxes()
        }
    }
    
    @IBAction func die(_ sender: AnyObject) {
        
       hideBlackBoxes()
        
        var numb = randomDiceRoll()
        
        switch numb {
        case 1:
            middleMiddle.isHidden = false
            fillTheBox(numm: numb)
        case 2:
            upperLeft.isHidden = false
            lowerRight.isHidden = false
            fillTheBox(numm: numb)
        case 3:
            upperLeft.isHidden = false
            middleMiddle.isHidden = false
            lowerRight.isHidden = false
            fillTheBox(numm: numb)
        case 4:
            upperLeft.isHidden = false
            upperRight.isHidden = false
            lowerLeft.isHidden = false
            lowerRight.isHidden = false
            fillTheBox(numm: numb)
        case 5:
            upperLeft.isHidden = false
            upperRight.isHidden = false
            middleMiddle.isHidden = false
            lowerLeft.isHidden = false
            lowerRight.isHidden = false
            fillTheBox(numm: numb)
        case 6:
            upperLeft.isHidden = false
            upperRight.isHidden = false
            middleLeft.isHidden = false
            middleRight.isHidden = false
            lowerLeft.isHidden = false
            lowerRight.isHidden = false
            fillTheBox(numm: numb)
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         hideAll()
        
            }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}


