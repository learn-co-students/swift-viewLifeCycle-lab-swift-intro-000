//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    @IBOutlet weak var labelSqaure1: UIView!
    @IBOutlet weak var labelSqaure2: UIView!
    @IBOutlet weak var labelSqaure3: UIView!
    @IBOutlet weak var labelSqaure4: UIView!
    @IBOutlet weak var labelSqaure5: UIView!
    @IBOutlet weak var labelSqaure6: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    var randomNumber = 0
    var count = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        randomNumber = randomDiceRoll()
        updateDicePips(randomNumber)
        updateScoreBoard(randomNumber)
        count += 1
        if count == 6 {
            count = 0
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateScoreBoard(_ number: Int) {
        switch count {
        case 0:
            labelSqaure1.isHidden = false
            label1.text =  String(number)
            break
        case 1:
            labelSqaure2.isHidden = false
            label2.text = String(number)
        case 5:
            labelSqaure6.isHidden = false
            label6.text =  String(number)
            break
        case 3:
            labelSqaure4.isHidden = false
            label4.text =  String(number)
            break
        case 4:
            labelSqaure5.isHidden = false
            label5.text =  String(number)
            break
        case 2:
            labelSqaure3.isHidden = false
            label3.text =  String(number)
            break

        default:
            break
        }
    }
    func clearSquares(){
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
    }

    
    func updateDicePips(_ number: Int) {
        clearSquares()
        
        switch number {
        case 1:
            square4.isHidden = false
            break
        case 2: 
            square1.isHidden = false
            square7.isHidden = false
            break
        case 3: 
            square6.isHidden = false
            square2.isHidden = false
            square4.isHidden = false
            break
        case 4: 
            square1.isHidden = false
            square2.isHidden = false
            square6.isHidden = false
            square7.isHidden = false
            break
        case 5: 
            square1.isHidden = false
            square2.isHidden = false
            square4.isHidden = false
            square6.isHidden = false
            square7.isHidden = false
            break
        case 6: 
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = false
            square5.isHidden = false
            square6.isHidden = false
            square7.isHidden = false
            break
        default:
            break
        }
    }
}

