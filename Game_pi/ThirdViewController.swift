//
//  ThirdViewController.swift
//  Game_pi
//
//  Created by KadeHina on 2016/02/17.
//  Copyright © 2016年 KadeHina. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    //最初に表示されるスタート地点の数字
    var timerCount = 120
    var timer = NSTimer()
    
    @IBOutlet weak var myLabel: UILabel!
    func Counting(){
        timerCount -= 1
        myLabel.text = "\(timerCount)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}