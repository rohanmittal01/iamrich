//
//  ViewController.swift
//  Dicee
//
//  Created by Vandana Mittal on 11/9/18.
//  Copyright © 2018 Rohan Mittal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1:Int=0
    var randomDiceIndex2:Int=0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        updateDiceImages()
    }
    
   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        updateDiceImages()
    }
    
    
    func updateDiceImages()
    {   randomDiceIndex1=Int.random(in: 0...5)
        randomDiceIndex2=Int.random(in: 0...5)
        
        diceImageView1.image=UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image=UIImage(named: diceArray[randomDiceIndex2])
     //   label1.text=diceArray[randomDiceIndex1]
        
        
    }
}

