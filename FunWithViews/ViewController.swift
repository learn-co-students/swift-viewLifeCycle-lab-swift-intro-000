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
        let allViews = [
            dieTopLeft, dieMiddleLeft, dieBottomLeft,
            dieMiddle,
            dieTopRight, dieMiddleRight, dieBottomRight,
            scoreBox1, scoreBox2, scoreBox3,
            scoreBox4, scoreBox5, scoreBox6
        ]
        for view in allViews {
            view?.isHidden = true
        }
    }

    @IBOutlet weak var dieTopLeft: UIView!
    @IBOutlet weak var dieMiddleLeft: UIView!
    @IBOutlet weak var dieBottomLeft: UIView!
    @IBOutlet weak var dieMiddle: UIView!
    @IBOutlet weak var dieTopRight: UIView!
    @IBOutlet weak var dieMiddleRight: UIView!
    @IBOutlet weak var dieBottomRight: UIView!

    @IBOutlet weak var scoreBox1: UIView!
    @IBOutlet weak var scoreBox2: UIView!
    @IBOutlet weak var scoreBox3: UIView!
    @IBOutlet weak var scoreBox4: UIView!
    @IBOutlet weak var scoreBox5: UIView!
    @IBOutlet weak var scoreBox6: UIView!

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
