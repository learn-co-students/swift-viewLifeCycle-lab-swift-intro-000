//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lb1: UIView!
    @IBOutlet var lb2: UIView!
    @IBOutlet var lb3: UIView!
    @IBOutlet var mb: UIView!
    @IBOutlet var rb1: UIView!
    @IBOutlet var rb2: UIView!
    @IBOutlet var rb3: UIView!
    
    @IBOutlet var lbl1: UILabel!
    @IBOutlet var lbl2: UILabel!
    @IBOutlet var lbl3: UILabel!
    @IBOutlet var lbl4: UILabel!
    @IBOutlet var lbl5: UILabel!
    @IBOutlet var lbl6: UILabel!
    
    //Counter to keep track on label history
    var counter = 1
    
    //Hide all boxes
    func hideAllBoxes() {
        lb1.isHidden = true
        lb2.isHidden = true
        lb3.isHidden = true
        mb.isHidden = true
        rb1.isHidden = true
        rb2.isHidden = true
        rb3.isHidden = true
    }
    
    //Hide all labels
    func hideAllLabels() {
        lbl1.isHidden = true
        lbl2.isHidden = true
        lbl3.isHidden = true
        lbl4.isHidden = true
        lbl5.isHidden = true
        lbl6.isHidden = true
    }
    
    //Hide all boxes and label when view loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideAllBoxes()
        hideAllLabels()
    }
    
    //Show dice number in labels and keep as history
    func setLabels(randomNumber: Int) {
        switch counter {
        case 1:
            lbl1.layer.backgroundColor = UIColor.lightGray.cgColor
            lbl1.text = String( randomNumber )
            lbl1.isHidden = false
        case 2:
            lbl2.layer.backgroundColor = UIColor.lightGray.cgColor
            lbl2.text = String( randomNumber )
            lbl2.isHidden = false
        case 3:
            lbl3.layer.backgroundColor = UIColor.lightGray.cgColor
            lbl3.text = String( randomNumber )
            lbl3.isHidden = false
        case 4:
            lbl4.layer.backgroundColor = UIColor.lightGray.cgColor
            lbl4.text = String( randomNumber )
            lbl4.isHidden = false
        case 5:
            lbl5.layer.backgroundColor = UIColor.lightGray.cgColor
            lbl5.text = String( randomNumber )
            lbl5.isHidden = false
        case 6:
            lbl6.layer.backgroundColor = UIColor.lightGray.cgColor
            lbl6.text = String( randomNumber )
            lbl6.isHidden = false
            counter = 0
        default:
            hideAllLabels()
        }
        
        counter += 1
    }
    
    //Show boxes according to dice number
    func setBoxes(randomNumber: Int) {
        switch randomNumber {
        case 1:
            mb.isHidden = false
        case 2:
            lb1.isHidden = false
            rb3.isHidden = false
        case 3:
            lb1.isHidden = false
            mb.isHidden = false
            rb3.isHidden = false
        case 4:
            lb2.isHidden = false
            lb3.isHidden = false
            rb2.isHidden = false
            rb3.isHidden = false
        case 5:
            lb1.isHidden = false
            lb3.isHidden = false
            mb.isHidden = false
            rb1.isHidden = false
            rb3.isHidden = false
        case 6:
            lb1.isHidden = false
            lb2.isHidden = false
            lb3.isHidden = false
            rb1.isHidden = false
            rb2.isHidden = false
            rb3.isHidden = false
        default:
            hideAllBoxes()
        }
    }
    
    //When clicked on dice
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let randomNumber = randomDiceRoll()
        
        setLabels(randomNumber: randomNumber)
        setBoxes(randomNumber: randomNumber)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        hideAllBoxes()
        return Int(arc4random_uniform(6) + 1)
    }

}
