//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var firstRoll: UILabel!
    
    @IBOutlet weak var secondRoll: UILabel!
    
    @IBOutlet weak var thirdRoll: UILabel!
    
    @IBOutlet weak var fourthRoll: UILabel!
    
    @IBOutlet weak var fifthRoll: UILabel!
    
    @IBOutlet weak var sixthRoll: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        
        firstRoll.isHidden = true
        secondRoll.isHidden = true
        thirdRoll.isHidden = true
        fourthRoll.isHidden = true
        fifthRoll.isHidden = true
        sixthRoll.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let result = randomDiceRoll()
        rearrangeDie(result)
        updateScore(result)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //Rearranges the black squares shown given the result of randomDiceRoll
    func rearrangeDie(_ result: Int){
        switch result {
            case 1:
                view4.isHidden = false
            
                view1.isHidden = true
                view2.isHidden = true
                view3.isHidden = true
                view5.isHidden = true
                view6.isHidden = true
                view7.isHidden = true
            
            case 2:
                view1.isHidden = false
                view7.isHidden = false
            
                view2.isHidden = true
                view3.isHidden = true
                view4.isHidden = true
                view5.isHidden = true
                view6.isHidden = true
            
            case 3:
                view1.isHidden = false
                view4.isHidden = false
                view7.isHidden = false
            
                view2.isHidden = true
                view3.isHidden = true
                view5.isHidden = true
                view6.isHidden = true
            
            
            case 4:
                view1.isHidden = false
                view2.isHidden = false
                view6.isHidden = false
                view7.isHidden = false
            
                view3.isHidden = true
                view4.isHidden = true
                view5.isHidden = true
            
            case 5:
                view1.isHidden = false
                view2.isHidden = false
                view4.isHidden = false
                view6.isHidden = false
                view7.isHidden = false
            
                view3.isHidden = true
                view5.isHidden = true
            
            default:
                view1.isHidden = false
                view2.isHidden = false
                view3.isHidden = false
                view4.isHidden = false
                view5.isHidden = false
                view6.isHidden = false
                view7.isHidden = false
        }
    }
    
    func updateScore(_ result: Int){
        let string = String(result)
        
        if firstRoll.isHidden {
            firstRoll.text = string
            firstRoll.isHidden = false
        }
        else if secondRoll.isHidden {
            secondRoll.text = string
            secondRoll.isHidden = false
        }
        else if thirdRoll.isHidden {
            thirdRoll.text = string
            thirdRoll.isHidden = false
        }
        else if fourthRoll.isHidden {
            fourthRoll.text = string
            fourthRoll.isHidden = false
        }
        else if fifthRoll.isHidden {
            fifthRoll.text = string
            fifthRoll.isHidden = false
        }
        else if sixthRoll.isHidden {
            sixthRoll.text = string
            sixthRoll.isHidden = false
        }
        else{
            firstRoll.text = string
            firstRoll.isHidden = false

            secondRoll.isHidden = true
            thirdRoll.isHidden = true
            fourthRoll.isHidden = true
            fifthRoll.isHidden = true
            sixthRoll.isHidden = true
        }
    }
    
    
    
    
    

}
