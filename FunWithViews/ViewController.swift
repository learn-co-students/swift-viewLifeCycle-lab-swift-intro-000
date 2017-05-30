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
        let allViews = allDieViews() + allScoreBoxes()
        for view in allViews {
            view.isHidden = true
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

    @IBAction func dieRoll(_ sender: Any) {
        clearDieViews()
        let roll = randomDiceRoll()
        switch roll {
        case 1:
            show1()
        case 2:
            show2()
        case 3:
            show3()
        case 4:
            show4()
        case 5:
            show5()
        case 6:
            show6()
        default:
            break
        }
    }

    func show1() {
        dieMiddle.isHidden = false
    }

    func show2() {
        dieTopLeft.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show3() {
        dieTopLeft.isHidden = false
        dieMiddle.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show4() {
        dieTopLeft.isHidden = false
        dieBottomLeft.isHidden = false
        dieTopRight.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show5() {
        dieTopLeft.isHidden = false
        dieBottomLeft.isHidden = false
        dieMiddle.isHidden = false
        dieTopRight.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show6() {
        dieTopLeft.isHidden = false
        dieMiddleLeft.isHidden = false
        dieBottomLeft.isHidden = false
        dieTopRight.isHidden = false
        dieMiddleRight.isHidden = false
        dieBottomRight.isHidden = false
    }

    func clearDieViews() {
        let dieViews = allDieViews()
        for view in dieViews {
            view.isHidden = true
        }
    }

    func allDieViews() -> Array<UIView> {
        return [
            dieTopLeft, dieMiddleLeft, dieBottomLeft,
            dieMiddle,
            dieTopRight, dieMiddleRight, dieBottomRight
        ]
    }

    func allScoreBoxes() -> Array<UIView> {
        return [
            scoreBox1, scoreBox2, scoreBox3,
            scoreBox4, scoreBox5, scoreBox6
        ]
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
