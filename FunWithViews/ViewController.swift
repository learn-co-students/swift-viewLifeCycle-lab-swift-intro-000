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
        view1.isHidden = true //hides view
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view8.isHidden = true
        view9.isHidden = true
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let score = randomDiceRoll()
        
        switch score {
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
            box1.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
        case 2:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = true
            view8.isHidden = true
            view9.isHidden = true
            box1.isHidden = true
            box2.isHidden = false
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
        case 3:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
            view8.isHidden = true
            view9.isHidden = false
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = false
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
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
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = false
            box5.isHidden = true
            box6.isHidden = true
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
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = false
            box6.isHidden = true
        default:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
            view8.isHidden = true
            view9.isHidden = false
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = false
        }
        
    }
    // IBOutlets for each black view
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    
    // IBOutlets for each button
    @IBOutlet weak var box1: UILabel!
    @IBOutlet weak var box2: UILabel!
    @IBOutlet weak var box3: UILabel!
    @IBOutlet weak var box4: UILabel!
    @IBOutlet weak var box5: UILabel!
    @IBOutlet weak var box6: UILabel!

}
