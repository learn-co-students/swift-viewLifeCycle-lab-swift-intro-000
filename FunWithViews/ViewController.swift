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

    @IBOutlet weak var r1: UILabel!
    @IBOutlet weak var r2: UILabel!
    @IBOutlet weak var r3: UILabel!
    @IBOutlet weak var r4: UILabel!
    @IBOutlet weak var r5: UILabel!
    @IBOutlet weak var r6: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        clearAll()
        count += 1
        let die = randomDiceRoll()
        switch die{
        case 1:
            view4.isHidden = false
        case 2:
            view3.isHidden = false
            view5.isHidden = false
        case 3:
            view1.isHidden = false
            view4.isHidden = false
            view7.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            view4.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default: break
           
        }
        showResult(count, die)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func clearAll(){
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
    }
    func showResult(_ view: Int, _ dieNum: Int)
    {
        switch view % 6 {
        case 1:
            r1.text = "\(dieNum)"
            r1.isHidden = false
        case 2:
            r2.text = "\(dieNum)"
            r2.isHidden = false
        case 3:
            r3.text = "\(dieNum)"
            r3.isHidden = false
        case 4:
            r4.text = "\(dieNum)"
            r4.isHidden = false
        case 5:
            r5.text = "\(dieNum)"
            r5.isHidden = false
        case 0:
            r6.text = "\(dieNum)"
            r6.isHidden = false
        default: break
        }
    }

}
