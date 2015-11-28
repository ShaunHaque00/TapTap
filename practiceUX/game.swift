//
//  game.swift
//  practiceUX
//
//  Created by Mohammad Haque on 11/8/15.
//  Copyright © 2015 shaun Haque. All rights reserved.
//

import Foundation
import UIKit

class game: UIViewController {
   
    var scorenumber = 0
    
    var time = 20
    
    var countdowntimer = NSTimer()
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var timer: UILabel!
    
    @IBOutlet weak var tapbutton: UIButton!
    
    @IBOutlet weak var exit: UIButton!
    
    @IBAction func tapbuttonPressed(sender: UIButton) {
        //Add score
        scorenumber = scorenumber + 1
        score.text = "\(scorenumber)"
        
    }
    
    func addtime() {
        time = time - 1
        timer.text = "\(time)"
        
        //gameover
        if (time == 0) {
            countdowntimer.invalidate()
            exit.hidden = false
            score.hidden = true
            timer.hidden = true
            tapbutton.hidden = true
        }
        
    }
    
    func settimer() {
        
        timer.text = "\(time)"
        
        countdowntimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("addtime"), userInfo: nil, repeats: true)
        
    }
  
    override func viewDidLoad() {
        
        exit.hidden = true
        
        self.settimer()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}