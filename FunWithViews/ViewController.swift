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
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear(_:) called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear(_:) called")
    }
    var flag = 0
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let num = randomDiceRoll()
        if(flag == 0){
            updateLabelWithRoll(roll: num)
            rearrangeDie(roll: num)
        }else{
            refresh()
            flag = 0
        }

        if(label6.isHidden == false){
            flag = 1
        }
        
        
    }

    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func rearrangeDie(roll: Int){
        if(roll == 1){
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
            
        }else if(roll == 2){
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
            
        }else if(roll == 3){
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
        }else if(roll == 4){
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
        }else if(roll == 5){
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
            
        }else if(roll == 6){
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            
        }
        
        
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        } else if label4.isHidden{
            label4.text = diceScore
            label4.isHidden = false
        } else if label5.isHidden{
            label5.text = diceScore
            label5.isHidden = false
        } else if label6.isHidden{
            label6.text = diceScore
            label6.isHidden = false
        }
        
    }
    func refresh(){
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }


}
