//
//  ThirdViewController.swift
//  Game_pi
//
//  Created by KadeHina on 2016/02/17.
//  Copyright © 2016年 KadeHina. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var countdownLabel: UITextField!
    
    
    //最初に表示されるスタート地点の数字
    var timerCount = 5
    var timer = NSTimer()


    
    func Counting(){
        timerCount -= 1
        
        countdownLabel.text = "残り  \(timerCount)秒"
        
        if(timerCount == 0){
        // タイマーの停止
        timer.invalidate()
        //次の画面に勝手に移動する
            var targetVi: AnyObject = self.storyboard!.instantiateViewControllerWithIdentifier( "equal" )
            self.presentViewController(targetVi as! UIViewController, animated: true, completion: nil)

            
        }
        
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