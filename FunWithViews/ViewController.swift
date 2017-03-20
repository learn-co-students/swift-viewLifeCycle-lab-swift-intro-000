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
        Upleftdie.isHidden = true
        Uprightdie.isHidden = true
        Midleftdie.isHidden = true
        Midmiddie.isHidden = true
        Midrightdie.isHidden = true
        Lowleftdie.isHidden = true
        Lowrightdie.isHidden = true
        
        r1.isHidden = true
        r2.isHidden = true
        r3.isHidden = true
        r4.isHidden = true
        r5.isHidden = true
        r6.isHidden = true
        
        Roll1.isHidden = true
        Roll2.isHidden = true
        Roll3.isHidden = true
        Roll4.isHidden = true
        Roll5.isHidden = true
        Roll6.isHidden = true
        
    }
    
    @IBOutlet weak var Upleftdie: UIView!
    @IBOutlet weak var Uprightdie: UIView!
    @IBOutlet weak var Midleftdie: UIView!
    @IBOutlet weak var Midmiddie: UIView!
    @IBOutlet weak var Midrightdie: UIView!
    @IBOutlet weak var Lowleftdie: UIView!
    @IBOutlet weak var Lowrightdie: UIView!
    
    @IBOutlet weak var Roll1: UIView!
    @IBOutlet weak var r1: UILabel!
    @IBOutlet weak var Roll2: UIView!
    @IBOutlet weak var r2: UILabel!
    @IBOutlet weak var Roll3: UIView!
    @IBOutlet weak var r3: UILabel!
    @IBOutlet weak var Roll4: UIView!
    @IBOutlet weak var r4: UILabel!
    @IBOutlet weak var Roll5: UIView!
    @IBOutlet weak var r5: UILabel!
    @IBOutlet weak var Roll6: UIView!
    @IBOutlet weak var r6: UILabel!
    
    
    @IBAction func RollDie(_ sender: Any) {
        Upleftdie.isHidden = true
        Uprightdie.isHidden = true
        Midleftdie.isHidden = true
        Midmiddie.isHidden = true
        Midrightdie.isHidden = true
        Lowleftdie.isHidden = true
        Lowrightdie.isHidden = true

        let rolldie = randomDiceRoll()
        
        
        switch rolldie {
        case 1:
            Midmiddie.isHidden = false
        case 2:
            Upleftdie.isHidden = false
            Lowrightdie.isHidden = false
        case 3:
            Uprightdie.isHidden = false
            Midmiddie.isHidden = false
            Lowleftdie.isHidden = false
        case 4:
            Upleftdie.isHidden = false
            Uprightdie.isHidden = false
            Lowleftdie.isHidden = false
            Lowrightdie.isHidden = false
        case 5:
            Upleftdie.isHidden = false
            Uprightdie.isHidden = false
            Midmiddie.isHidden = false
            Lowleftdie.isHidden = false
            Lowrightdie.isHidden = false
        case 6:
            Upleftdie.isHidden = false
            Uprightdie.isHidden = false
            Midleftdie.isHidden = false
            Midrightdie.isHidden = false
            Lowleftdie.isHidden = false
            Lowrightdie.isHidden = false
        default:
            Upleftdie.isHidden = true
            Uprightdie.isHidden = true
            Midleftdie.isHidden = true
            Midmiddie.isHidden = true
            Midrightdie.isHidden = true
            Lowleftdie.isHidden = true
            Lowrightdie.isHidden = true
            print("roll success")
            print(rolldie)
        }
        updateScore(rolldie: rolldie)

    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateScore(rolldie:Int) {
        if Roll1.isHidden == true {
            r1.text = String(rolldie)
            Roll1.isHidden = false
            r1.isHidden = false
        } else if Roll2.isHidden == true {
            r2.text = String(rolldie)
            Roll2.isHidden = false
            r2.isHidden = false
        } else if Roll3.isHidden == true {
            r3.text = String(rolldie)
            Roll3.isHidden = false
            r3.isHidden = false
        } else if Roll4.isHidden == true {
            r4.text = String(rolldie)
            Roll4.isHidden = false
            r4.isHidden = false
        } else if Roll5.isHidden == true {
            r5.text = String(rolldie)
            Roll5.isHidden = false
            r5.isHidden = false
        } else if Roll6.isHidden == true {
            r6.text = String(rolldie)
            Roll6.isHidden = false
            r6.isHidden = false
        } else {
            Roll2.isHidden = true
            Roll3.isHidden = true
            Roll4.isHidden = true
            Roll5.isHidden = true
            Roll6.isHidden = true
            r1.text = String(rolldie)
            Roll1.isHidden = false
            r1.isHidden = false
        }
    }
    
}
