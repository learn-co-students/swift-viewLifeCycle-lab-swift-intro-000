//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diev1: UIView!
    @IBOutlet weak var diev2: UIView!
    @IBOutlet weak var diev3: UIView!
    @IBOutlet weak var diev4: UIView!
    @IBOutlet weak var diev5: UIView!
    @IBOutlet weak var diev6: UIView!
    @IBOutlet weak var diev7: UIView!
    
    @IBOutlet weak var hv1: UIView!
    @IBOutlet weak var hv2: UIView!
    @IBOutlet weak var hv3: UIView!
    @IBOutlet weak var hv4: UIView!
    @IBOutlet weak var hv5: UIView!
    @IBOutlet weak var hv6: UIView!
    
    @IBOutlet weak var hl1: UILabel!
    @IBOutlet weak var hl2: UILabel!
    @IBOutlet weak var hl3: UILabel!
    @IBOutlet weak var hl4: UILabel!
    @IBOutlet weak var hl5: UILabel!
    @IBOutlet weak var hl6: UILabel!
    
    var roll_count = 0
    let max_count = 6
    
    
    func hideAllDieMarkers( ){
        diev1.isHidden = true
        diev2.isHidden = true
        diev3.isHidden = true
        diev4.isHidden = true
        diev5.isHidden = true
        diev6.isHidden = true
        diev7.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideAllDieMarkers()
        
        hv1.isHidden = true
        hv2.isHidden = true
        hv3.isHidden = true
        hv4.isHidden = true
        hv5.isHidden = true
        hv6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let die_value = randomDiceRoll();
        updateDieInterface(val: die_value)
        recordRoll(val: die_value)
        roll_count += 1
        if roll_count >= max_count{
            roll_count = 0;
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateDieInterface(val: Int){
        hideAllDieMarkers()
        switch val{
        case 1:
            diev4.isHidden = false
        case 2:
            diev3.isHidden = false
            diev5.isHidden = false
        case 3:
            diev3.isHidden = false
            diev4.isHidden = false
            diev5.isHidden = false
        case 4:
            diev1.isHidden = false
            diev3.isHidden = false
            diev5.isHidden = false
            diev7.isHidden = false
        case 5:
            diev1.isHidden = false
            diev3.isHidden = false
            diev4.isHidden = false
            diev5.isHidden = false
            diev7.isHidden = false
        default:
            diev1.isHidden = false
            diev2.isHidden = false
            diev3.isHidden = false
            diev5.isHidden = false
            diev6.isHidden = false
            diev7.isHidden = false
        }
    }
    
    func recordRoll(val: Int){
        switch roll_count{
        case 1:
            hv2.isHidden = false
            hl2.text = String(val)
        case 2:
            hv3.isHidden = false
            hl3.text = String(val)
        case 3:
            hv4.isHidden = false
            hl4.text = String(val)
        case 4:
            hv5.isHidden = false
            hl5.text = String(val)
        case 5:
            hv6.isHidden = false
            hl6.text = String(val)
        default:
            hv1.isHidden = false
            hl1.text = String(val)
        }
    }
}
