//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var count1 = 0
    
    //Outlets//////////////////
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var purple: UIView!
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        
        red.isHidden = true
        orange.isHidden = true
        yellow.isHidden = true
        green.isHidden = true
        blue.isHidden = true
        purple.isHidden = true
        
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true

    }
    
    
    //dice tapped
    @IBAction func dieButtonTapped(_ sender: AnyObject)
    {
        count1 = count1 + 1
        var num1 = randomDiceRoll()
        
        if (count1>6)
        {
            count1 = 1
            restart()
            update(count: count1, num: num1)//colored boxes
            updateBlack(num2: num1) //black boxes
        }
        else
        {
            update(count: count1, num: num1)//colored boxes
            updateBlack(num2: num1) //black boxes
        }
        
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //restart
    func restart() {
        red.isHidden = true
        orange.isHidden = true
        yellow.isHidden = true
        green.isHidden = true
        blue.isHidden = true
        purple.isHidden = true
        
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    
    
    //function to update black boxes
    func updateBlack(num2: Int)
    {
        if (num2==1)
        {
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = false
            box5.isHidden = true
            box6.isHidden = true
            box7.isHidden = true
        }
        else if (num2==2)
        {
            box1.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
            box7.isHidden = false
        }
        else if (num2==3)
        {
            box1.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = false
            box5.isHidden = true
            box6.isHidden = true
            box7.isHidden = false
        }
        else if (num2==4)
        {
            box1.isHidden = false
            box2.isHidden = true
            box3.isHidden = false
            box4.isHidden = true
            box5.isHidden = false
            box6.isHidden = true
            box7.isHidden = false
        }
        else if (num2==5)
        {
            box1.isHidden = false
            box2.isHidden = true
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
            box6.isHidden = true
            box7.isHidden = false
        }
        else if (num2==6)
        {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box4.isHidden = true
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        }
    }
    
    //function to update colored boxes
    func update(count: Int, num: Int)
    {
        
        if (count==1)
        {
            red.isHidden = false
            label1.isHidden = false
            label1.text = String(num)
        }
        else if (count==2)
        {
            orange.isHidden = false
            label2.isHidden = false
            label2.text = String(num)
        }
        else if (count==3)
        {
            yellow.isHidden = false
            label3.isHidden = false
            label3.text = String(num)
        }
        else if (count==4)
        {
            green.isHidden = false
            label4.isHidden = false
            label4.text = String(num)
        }
        else if (count==5)
        {
            blue.isHidden = false
            label5.isHidden = false
            label5.text = String(num)
        }
        else if (count==6)
        {
            purple.isHidden = false
            label6.isHidden = false
            label6.text = String(num)
        }
    }

}
