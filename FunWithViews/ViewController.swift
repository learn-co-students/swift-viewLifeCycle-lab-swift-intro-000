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

    @IBOutlet weak var cView1: UILabel!
    @IBOutlet weak var cView2: UILabel!
    @IBOutlet weak var cView3: UILabel!
    @IBOutlet weak var cView4: UILabel!
    @IBOutlet weak var cView5: UILabel!
    @IBOutlet weak var cView6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         view1.isHidden = true
         view2.isHidden = true
         view3.isHidden = true
         view4.isHidden = true
         view5.isHidden = true
         view6.isHidden = true
         view7.isHidden = true

         cView1.isHidden = true
         cView2.isHidden = true
         cView3.isHidden = true
         cView4.isHidden = true
         cView5.isHidden = true
         cView6.isHidden = true


    }

    
    func hide() {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
    }
    func updateLabel(roll: Int) {
        let score = String(roll)
        
        if cView1.isHidden {
            cView1.text = score
            cView1.isHidden = false
        } else if cView2.isHidden {
            cView2.text = score
            cView2.isHidden = false
        } else if cView3.isHidden {
            cView3.text = score
            cView3.isHidden = false
        } else if cView4.isHidden {
            cView4.text = score
            cView4.isHidden = false
        } else if cView5.isHidden {
            cView5.text = score
            cView5.isHidden = false
        } else if cView6.isHidden {
            cView6.text = score
            cView6.isHidden = false
        }
    
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var num = randomDiceRoll()
        hide()
        switch num {
        case 1:
            view4.isHidden = false
        case 2:
            view3.isHidden = false
            view5.isHidden = false
        case 3:
            view2.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
        case 4:
            view1.isHidden = false
            view2.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        case 5:
            view1.isHidden = false
            view2.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            view4.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view1.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            hide()
        }
        updateLabel(roll: num)
        print(num)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
