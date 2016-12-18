//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelThird: UILabel!
    @IBOutlet weak var labelFourth: UILabel!
    @IBOutlet weak var labelFifth: UILabel!
    @IBOutlet weak var labelSixth: UILabel!
    
    @IBOutlet weak var gameOver: UILabel!
    
    @IBOutlet weak var viewLT: UIView!
    @IBOutlet weak var viewRT: UIView!
    @IBOutlet weak var viewLM: UIView!
    @IBOutlet weak var viewMM: UIView!
    @IBOutlet weak var viewRM: UIView!
    @IBOutlet weak var viewLB: UIView!
    @IBOutlet weak var viewRB: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var count = 0
    
    @IBAction func dieButtonTapped(_ sender: Any) {
        let dieNum = randomDiceRoll()
        count = count + 1
        
        arrangeTop(num: dieNum)
        arrangeBottom(seq: count, num: dieNum)
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func arrangeTop(num: Int?) {
        
        if var num = num {
            if count > 6 {
                num = 0
            }

            
            switch num {
            case 1:
                viewLT.isHidden = true
                viewRT.isHidden = true
                viewLM.isHidden = true
                viewMM.isHidden = false
                viewRM.isHidden = true
                viewLB.isHidden = true
                viewRB.isHidden = true
            case 2:
                viewLT.isHidden = true
                viewRT.isHidden = true
                viewLM.isHidden = false
                viewMM.isHidden = true
                viewRM.isHidden = false
                viewLB.isHidden = true
                viewRB.isHidden = true
            case 3:
                viewLT.isHidden = false
                viewRT.isHidden = true
                viewLM.isHidden = true
                viewMM.isHidden = false
                viewRM.isHidden = true
                viewLB.isHidden = true
                viewRB.isHidden = false
            case 4:
                viewLT.isHidden = false
                viewRT.isHidden = false
                viewLM.isHidden = true
                viewMM.isHidden = true
                viewRM.isHidden = true
                viewLB.isHidden = false
                viewRB.isHidden = false
            case 5:
                viewLT.isHidden = false
                viewRT.isHidden = false
                viewLM.isHidden = true
                viewMM.isHidden = false
                viewRM.isHidden = true
                viewLB.isHidden = false
                viewRB.isHidden = false
            case 6:
                viewLT.isHidden = false
                viewRT.isHidden = false
                viewLM.isHidden = false
                viewMM.isHidden = true
                viewRM.isHidden = false
                viewLB.isHidden = false
                viewRB.isHidden = false
            default:
                viewLT.isHidden = true
                viewRT.isHidden = true
                viewLM.isHidden = true
                viewMM.isHidden = true
                viewRM.isHidden = true
                viewLB.isHidden = true
                viewRB.isHidden = true
            }
        }
    }
    
    func arrangeBottom(seq: Int, num: Int) {
            switch seq {
            case 1:
                labelFirst.isHidden = false
                labelFirst.text = String(num)
            case 2:
                labelSecond.isHidden = false
                labelSecond.text = String(num)
            case 3:
                labelThird.isHidden = false
                labelThird.text = String(num)
            case 4:
                labelFourth.isHidden = false
                labelFourth.text = String(num)
            case 5:
                labelFifth.isHidden = false
                labelFifth.text = String(num)
            case 6:
                labelSixth.isHidden = false
                labelSixth.text = String(num)
            default:
                gameOver.isHidden = false
                labelFirst.isHidden = true
                labelSecond.isHidden = true
                labelThird.isHidden = true
                labelFourth.isHidden = true
                labelFifth.isHidden = true
                labelSixth.isHidden = true
                
            }
        
            
    }
    
    

}
