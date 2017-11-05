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
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    
    @IBOutlet weak var viewColored1: UIView!
    @IBOutlet weak var viewColored2: UIView!
    @IBOutlet weak var viewColored3: UIView!
    @IBOutlet weak var viewColored4: UIView!
    @IBOutlet weak var viewColored5: UIView!
    @IBOutlet weak var viewColored6: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    func clearDiceView() {
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
    
    override func viewDidLoad() {

        clearDiceView()
        viewColored1.isHidden = true
        viewColored2.isHidden = true
        viewColored3.isHidden = true
        viewColored4.isHidden = true
        viewColored5.isHidden = true
        viewColored6.isHidden = true
        
        
        
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    @IBAction func updateLabelWithRoll(_ sender: Any) {
        let one:Int = randomDiceRoll()
        updateLabelWithRolls(roll:one)
    }
    
    func updateLabelWithRolls(roll: Int) {
        
        clearDiceView()
        let diceScore = String(roll)
        
        switch diceScore {
        case "1":
            view5.isHidden = false
        case "2":
            view1.isHidden = false
            view9.isHidden = false
        case "3":
            view1.isHidden = false
            view5.isHidden = false
            view9.isHidden = false
        case "4":
            view1.isHidden = false
            view3.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        case "5":
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        case "6":
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view7.isHidden = false
            view8.isHidden = false
            view9.isHidden = false
        default:
            clearDiceView()
        }
        
        if viewColored1.isHidden {
            label1.text = diceScore
            viewColored1.isHidden = false
        } else if viewColored2.isHidden  {
            label2.text = diceScore
            viewColored2.isHidden = false
        } else if viewColored3.isHidden  {
            label3.text = diceScore
            viewColored3.isHidden = false
        } else if viewColored4.isHidden  {
            label4.text = diceScore
            viewColored4.isHidden = false
        } else if viewColored5.isHidden  {
            label5.text = diceScore
            viewColored5.isHidden = false
        } else if viewColored6.isHidden  {
            label6.text = diceScore
            viewColored6.isHidden = false
        }

    }
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
}
