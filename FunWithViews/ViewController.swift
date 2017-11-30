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
       labelsArray = [label1, label2, label3, label4, label5, label6]
        for UILabel in labelsArray{
            UILabel.isHidden=true;
        }
        viewsArray = [view1, view2, view3, view4, view5, view6, view7]
        for UIView in viewsArray {
            UIView.isHidden = true
        }
    }
    
    var counter = 0
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        clearViews()
       let number = randomDiceRoll()
       counter = counter+1
        if (counter < 7){
            labelsArray[counter].text = String(number)
            labelsArray[counter].isHidden = false
        }
        else {
            counter = 0 }
        
        switch number {
        case 1:
            view4.isHidden=false
            break
        case 2:
            view3.isHidden = false
            view5.isHidden = false
            break
        case 3:
            view2.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
            break
        case 4:
            break
        case 5:
            break
        case 6:
            break
        default:
            break
        }
        
    }
    
    func clearViews() {
        for UIView in viewsArray {
            UIView.isHidden = true
        }
    }
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    var viewsArray : [UIView] = []
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    var labelsArray : [UILabel] = []
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
