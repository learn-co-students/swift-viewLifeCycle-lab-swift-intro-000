//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dieView1: UIView!
    @IBOutlet weak var dieView2: UIView!
    @IBOutlet weak var dieView3: UIView!
    @IBOutlet weak var dieView4: UIView!
    @IBOutlet weak var dieView5: UIView!
    @IBOutlet weak var dieView6: UIView!
    @IBOutlet weak var dieView7: UIView!
    
   
    
    @IBOutlet weak var r1Label: UILabel!
    @IBOutlet weak var r2Label: UILabel!
    @IBOutlet weak var r3Label: UILabel!
    @IBOutlet weak var r4Label: UILabel!
    @IBOutlet weak var r5Label: UILabel!
    @IBOutlet weak var r6Label: UILabel!
    
    @IBOutlet weak var s1View: UIView!
    @IBOutlet weak var s2View: UIView!
    @IBOutlet weak var s3View: UIView!
    @IBOutlet weak var s4View: UIView!
    @IBOutlet weak var s5View: UIView!
    @IBOutlet weak var s6View: UIView!
    
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dieView1.isHidden = true
        dieView2.isHidden = true
        dieView3.isHidden = true
        dieView4.isHidden = true
        dieView5.isHidden = true
        dieView6.isHidden = true
        dieView7.isHidden = true
        
        s1View.isHidden = true
        s2View.isHidden = true
        s3View.isHidden = true
        s4View.isHidden = true
        s5View.isHidden = true
        s6View.isHidden = true
    }
    
    @IBAction func diceButtonPush(_ sender: Any) {
        let score = randomDiceRoll()
        
        
        if s6View.isHidden {
            showViews(for: score)
            updateLabels(for: score)
        } else {
            return
        }
        
    }
   
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showViews(for score: Int) {
        switch score {
        case 1:
            dieView1.isHidden = true
            dieView2.isHidden = true
            dieView3.isHidden = true
            dieView4.isHidden = false
            dieView5.isHidden = true
            dieView6.isHidden = true
            dieView7.isHidden = true
        case 2:
            dieView1.isHidden = true
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = true
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = true
        case 3:
            dieView1.isHidden = true
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = false
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = true
        case 4:
            dieView1.isHidden = false
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = true
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = false
        case 5:
            dieView1.isHidden = false
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = false
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = false
        case 6:
            dieView1.isHidden = false
            dieView2.isHidden = false
            dieView3.isHidden = false
            dieView4.isHidden = true
            dieView5.isHidden = false
            dieView6.isHidden = false
            dieView7.isHidden = false
        default:
            break
        }
        
    }
    
    func updateLabels(for score: Int) {
        
        if s1View.isHidden {
            r1Label.text = "\(score)"
            s1View.isHidden = false
        } else if s2View.isHidden {
            r2Label.text = "\(score)"
            s2View.isHidden = false
        } else if s3View.isHidden {
            r3Label.text = "\(score)"
            s3View.isHidden = false
        } else if s4View.isHidden {
            r4Label.text = "\(score)"
            s4View.isHidden = false
        } else if s5View.isHidden {
            r5Label.text = "\(score)"
            s5View.isHidden = false
        }  else if s6View.isHidden {
            r6Label.text = "\(score)"
            s6View.isHidden = false
        } else {
            return
        }
    }
}
