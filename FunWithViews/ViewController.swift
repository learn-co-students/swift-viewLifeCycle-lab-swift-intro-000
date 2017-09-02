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
    
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var OrangeLabel: UILabel!
    @IBOutlet weak var YellowLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var MagentaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
