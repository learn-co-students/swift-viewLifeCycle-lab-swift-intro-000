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
    
    @IBOutlet weak var redL: UILabel!
    
    @IBOutlet weak var yellowL: UILabel!
    
    @IBOutlet weak var greenL: UILabel!
    
    @IBOutlet weak var purpleL: UILabel!
    
    @IBOutlet weak var violetL: UILabel!
    
    @IBOutlet weak var lightgreenL: UILabel!
    
    @IBOutlet weak var diceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide views;
        view1.isHidden = true;
        view2.isHidden = true;
        view3.isHidden = true;
        view4.isHidden = true;
        view5.isHidden = true;
        view6.isHidden = true;
        view7.isHidden = true;
        
        //hide label
        redL.isHidden = true;
        yellowL.isHidden = true;
        greenL.isHidden = true;
        purpleL.isHidden = true;
        violetL.isHidden = true;
        lightgreenL.isHidden = true;
        
        
    }
    
    var i = 0;
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        if i%6 == 0 {
            hideAllLabel()
        }
        let diceScore = randomDiceRoll()
        hideAllViews();
        updateLabelWithRoll(roll: diceScore)
        rearrangeViews(roll: diceScore)
        i += 1
        
    }
    
    func hideAllViews() {
        view1.isHidden = true;
        view2.isHidden = true;
        view3.isHidden = true;
        view4.isHidden = true;
        view5.isHidden = true;
        view6.isHidden = true;
        view7.isHidden = true;
    }
    
    func hideAllLabel() {
        redL.isHidden = true;
        yellowL.isHidden = true;
        greenL.isHidden = true;
        purpleL.isHidden = true;
        violetL.isHidden = true;
        lightgreenL.isHidden = true;
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int){
        
        
        let diceRoll = String(roll)
        
        if redL.isHidden {
            
            redL.text = diceRoll
            redL.isHidden = false
            
        }else if yellowL.isHidden {
            
            yellowL.text = diceRoll
            yellowL.isHidden = false
            
        }else if greenL.isHidden {
            
            greenL.text = diceRoll
            greenL.isHidden = false
            
        }else if purpleL.isHidden {
            
            purpleL.text = diceRoll
            purpleL.isHidden = false
            
        }else if violetL.isHidden {
            
            violetL.text = diceRoll
            violetL.isHidden = false
            
        }else if lightgreenL.isHidden {
            
            lightgreenL.text = diceRoll
            lightgreenL.isHidden = false
            
        }
        
        
    }
    
    func rearrangeViews(roll : Int) {
        
        switch roll {
            
        case 1:
            
            view4.isHidden = false
            break
            
        case 2:
            
            view2.isHidden = false
            view6.isHidden = false
            break
            
        case 3:
            
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            break
            
        case 4:
            
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            break;
            
        case 5:
            
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
            break;
            
        case 6:
            
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            break;
        
        default:
            break;
            
        }
        
    }
    
    

}
