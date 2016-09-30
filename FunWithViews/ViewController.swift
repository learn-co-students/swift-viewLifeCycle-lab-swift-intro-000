//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dot11: UILabel!
    
    @IBOutlet weak var dot12: UILabel!
    
    @IBOutlet weak var dot21: UILabel!
    
    @IBOutlet weak var dot22: UILabel!
    
    @IBOutlet weak var dot23: UILabel!
    
    @IBOutlet weak var dot31: UILabel!
    
    @IBOutlet weak var dot32: UILabel!
    
    
    @IBOutlet weak var res1: UILabel!
    
    @IBOutlet weak var res2: UILabel!
    
    @IBOutlet weak var res3: UILabel!
    
    @IBOutlet weak var res4: UILabel!
    
    @IBOutlet weak var res5: UILabel!
    
    @IBOutlet weak var res6: UILabel!
    
    var num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dot11.isHidden = true
        dot12.isHidden = true
        dot21.isHidden = true
        dot22.isHidden = true
        dot23.isHidden = true
        dot31.isHidden = true
        dot32.isHidden = true
        
        res1.isHidden = true
        res2.isHidden = true
        res3.isHidden = true
        res4.isHidden = true
        res5.isHidden = true
        res6.isHidden = true

        //alignment
        res1.textAlignment = NSTextAlignment.center
        res2.textAlignment = NSTextAlignment.center
        res3.textAlignment = NSTextAlignment.center
        res4.textAlignment = NSTextAlignment.center
        res5.textAlignment = NSTextAlignment.center
        res6.textAlignment = NSTextAlignment.center
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        num = randomDiceRoll();
        
        //reset dice dots
        dot11.isHidden = true
        dot12.isHidden = true
        dot21.isHidden = true
        dot22.isHidden = true
        dot23.isHidden = true
        dot31.isHidden = true
        dot32.isHidden = true
        
        
        switch num {
            case 1: dot22.isHidden = false
            case 2: dot11.isHidden = false; dot32.isHidden = false
            case 3: dot11.isHidden = false;
            dot22.isHidden = false; dot32.isHidden = false
            case 4: dot11.isHidden = false; dot12.isHidden = false; dot31.isHidden = false;
                    dot32.isHidden = false
            case 5: dot11.isHidden = false; dot12.isHidden = false; dot22.isHidden = false;
                    dot31.isHidden = false; dot32.isHidden = false
            
            default: dot11.isHidden = false; dot12.isHidden = false;  dot21.isHidden = false; dot22.isHidden = false; dot31.isHidden = false; dot32.isHidden = false;
        }

        
        //last 6 results
        if res1.isHidden == true{
            res1.isHidden = false;
            res1.text = String(num)
        } else
        if res2.isHidden{
               res2.isHidden = false
                res2.text = String(num)
        } else
            if res3.isHidden{
                res3.isHidden = false
                res3.text = String(num)
        } else
        if res4.isHidden{
            res4.isHidden = false
            res4.text = String(num)
        } else
        if res5.isHidden{
            res5.isHidden = false
            res5.text = String(num)
        } else
        if res6.isHidden{
            res6.isHidden = false
            res6.text = String(num)
        }else
        {
            res1.text = res2.text
            res2.text = res3.text
            res3.text = res4.text
            res4.text = res5.text
            res5.text = res6.text
            res6.text = String(num)
            
        }
        
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    

}
