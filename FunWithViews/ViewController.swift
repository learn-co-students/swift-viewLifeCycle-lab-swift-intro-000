//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var caixa1: UIView!
    @IBOutlet weak var caixa2: UIView!
    @IBOutlet weak var caixa3: UIView!
    @IBOutlet weak var caixa4: UIView!
    @IBOutlet weak var caixa5: UIView!
    @IBOutlet weak var caixa6: UIView!
    @IBOutlet weak var caixa7: UIView!
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    @IBOutlet weak var num4: UILabel!
    @IBOutlet weak var num5: UILabel!
    @IBOutlet weak var num6: UILabel!
    
    var rodadas:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func resetCores(){
        num1.backgroundColor = UIColor.cyan
        num2.backgroundColor = UIColor.cyan
        num3.backgroundColor = UIColor.cyan
        num4.backgroundColor = UIColor.cyan
        num5.backgroundColor = UIColor.cyan
        num6.backgroundColor = UIColor.cyan
        
    }
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        resetCores()
        var rodAt = randomDiceRoll()
        var numAt:UILabel!
        switch rodadas {
        case 0:
            numAt = num1
        case 1:
            numAt = num2
        case 2:
            numAt = num3
        case 3:
            numAt = num4
        case 4:
            numAt = num5
        case 5:
            numAt = num6
        default:
            rodadas = 0
            numAt = num1
        }
        numAt.text = String(rodAt)
        numAt.backgroundColor = UIColor.red
        mostraNum(num: rodAt)
        rodadas = rodadas + 1
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func zeraCaixas(){
        caixa1.isHidden = true
        caixa2.isHidden = true
        caixa3.isHidden = true
        caixa4.isHidden = true
        caixa5.isHidden = true
        caixa6.isHidden = true
        caixa7.isHidden = true
        
    }
    func mostraNum(num:Int){
        zeraCaixas()
        switch num{
        case 1:
            caixa4.isHidden = false
        case 2:
            caixa1.isHidden = false
            caixa7.isHidden = false
        case 3:
            caixa1.isHidden = false
            caixa4.isHidden = false
            caixa7.isHidden = false
        case 4:
            caixa1.isHidden = false
            caixa2.isHidden = false
            caixa6.isHidden = false
            caixa7.isHidden = false
        case 5:
            caixa1.isHidden = false
            caixa2.isHidden = false
            caixa4.isHidden = false
            caixa6.isHidden = false
            caixa7.isHidden = false
        case 6:
            caixa1.isHidden = false
            caixa2.isHidden = false
            caixa3.isHidden = false
            caixa5.isHidden = false
            caixa6.isHidden = false
            caixa7.isHidden = false
        default:
            mostraAlerta(str:"NUMERO IMPOSSIVEL")
        
        }
    }
    func mostraAlerta(str:String){
        let alert = UIAlertController(title: "Aconteceu um err!o", message: str, preferredStyle: .alert)
    }
}
