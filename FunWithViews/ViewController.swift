//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentLabel: Int = 0
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDices()
        initLabels()
        currentLabel = 1
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var num = 0
        num = randomDiceRoll()
        drawDices(num: num)
        drawLabels(num: num, position: currentLabel)
        if (currentLabel < 6) {
            currentLabel += 1
        } else {
            currentLabel = 1
        }
    }
    
    func drawLabels(num: Int, position: Int) {
        switch position {
        case 1:
            initLabels()
            label1.text = String(num)
            label1.isHidden = false
        case 2:
            label2.text = String(num)
            label2.isHidden = false
        case 3:
            label3.text = String(num)
            label3.isHidden = false
        case 4:
            label4.text = String(num)
            label4.isHidden = false
        case 5:
            label5.text = String(num)
            label5.isHidden = false
        case 6:
            label6.text = String(num)
            label6.isHidden = false
        default:
            label1.text = label2.text
            label2.text = label3.text
            label3.text = label4.text
            label4.text = label5.text
            label5.text = label6.text
            label6.text = String(num)
        }
    }
    
    func initLabels () {
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    func initDices() {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view8.isHidden = true
        view9.isHidden = true
    }
    
    func drawDices(num: Int) {
    switch num {
        case 1:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
            view8.isHidden = true
            view9.isHidden = true
        case 2:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = true
        case 3:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = true
        case 4:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
        case 5:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
    default:
        return
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
