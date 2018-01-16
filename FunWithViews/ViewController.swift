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
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var score = randomDiceRoll()
        }
    
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var five: UILabel!
    @IBOutlet weak var three: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var four: UILabel!
    @IBOutlet weak var six: UILabel!
    
    if score == 1{
        one.backgroundColor = UIColor.Black
    } else if score == 2{
        one.backgroundColor = UIcolor.Black
        two.backgroundColor = UIColor.Black
    } else if score == 2{
        
    }
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    

}
