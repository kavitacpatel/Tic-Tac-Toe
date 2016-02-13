//
//  ViewController.swift
//  tic tac toe

//
//  Created by kavita patel on 2/9/16.
//  Copyright © 2016 kavita patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    var flag: Bool = true
    var image: UIImage!
    var ans: [Int] = [10, 2 , 3, 4, 5, 6, 7, 8, 9]
    var cnt: Int = 0
    
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn1: UIButton!
    
    
    func toggle() -> Int {
              if flag == true
        {
            flag = false
             image = UIImage(named: "oimg.jpg")
             cnt += 1
  
            return 0
        }
        else
        {
            flag = true
             image = UIImage(named: "ximg.jpg")
              cnt += 1
            return 1
        }
   
                }
    func pass(r:Int)
    {
        if r == 0
        {
            result(" O WINS !!!")
        }
        else
        {
            result(" X WINS !!! ")
        }
        reset()
    }
    func reset()
    {
      image = UIImage(named: "btn.jpg")
        flag = true
        cnt = 0
        for var i = 0; i < 9; i += 1
        {
            ans[i] = i + 2
            }
        btn1.setImage(image, forState: .Normal)
        btn2.setImage(image, forState: .Normal)
        btn3.setImage(image, forState: .Normal)
        btn4.setImage(image, forState: .Normal)
        btn5.setImage(image, forState: .Normal)
        btn6.setImage(image, forState: .Normal)
        btn7.setImage(image, forState: .Normal)
        btn8.setImage(image, forState: .Normal)
          btn9.setImage(image, forState: .Normal)
        btn1.enabled = true
         btn1.enabled = true
         btn2.enabled = true
         btn3.enabled = true
         btn4.enabled = true
         btn5.enabled = true
         btn6.enabled = true
         btn7.enabled = true
         btn8.enabled = true
         btn9.enabled = true
        
    }
    func setimg(btn: UIButton)
    {
        btn.setImage(image, forState: .Normal)
        btn.enabled = false
        if (ans[0] == ans[1] && ans[1] == ans[2]) || (ans[0] == ans[3] && ans[0] == ans[6]) || (ans[0] == ans[4] && ans[4] == ans[8])
        {
            pass(ans[0])
        }
        else if (ans[1] == ans[4] && ans[4] == ans[7]) || (ans[2] == ans[4] && ans[4] == ans[6]) || (ans[3] == ans[4] && ans[3] == ans[5])
        {
            pass(ans[4])
        }
        else if (ans[2] == ans[5] && ans[5] == ans[8]) || (ans[6] == ans[7] && ans[6] == ans[8])
       {
            pass(ans[8])
        }
        if cnt == 9
        {
            result("Oops.. Better luck next time")
            reset()
        }
      
    }
    func result(msg: String)
   {
    
        let alertController = UIAlertController(title: "TIC TAC TOE", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        presentViewController(alertController, animated: true, completion: nil)
    
       }
    @IBAction func btn1(sender: AnyObject) {
        if toggle() == 0{
           ans[0] = 0
        }
        else{
            ans[0] = 1
        }
     setimg(btn1)
       
    }
   
    @IBAction func btn2(sender: AnyObject) {
        if toggle() == 0{
            ans[1] = 0
        }
        else{
            ans[1] = 1
        }
        setimg(btn2)
        
    }
    @IBAction func btn3(sender: AnyObject) {
        if toggle() == 0{
            ans[2] = 0
        }
        else{
            ans[2] = 1
        }
        setimg(btn3)
       
    }
    @IBAction func btn4(sender: AnyObject) {
        if toggle() == 0{
            ans[3] = 0
        }
        else{
            ans[3] = 1
        }
        setimg(btn4)
           }
    @IBAction func btn5(sender: AnyObject) {
        if toggle() == 0{
           ans[4] = 0
        }
        else{
            ans[4] = 1
        }
        setimg(btn5)

    }
    @IBAction func btn6(sender: AnyObject) {
        if toggle() == 0{
            ans[5] = 0
        }
        else{
            ans[5] = 1
        }
        setimg(btn6)
       

    }
    
    @IBAction func btn7(sender: AnyObject) {
        if toggle() == 0
        {
            ans[6] = 0
        }
        else{
            ans[6] = 1
        }
      setimg(btn7)
        


    }
    @IBAction func btn8(sender: AnyObject) {
        if toggle() == 0
        {
            ans[7] = 0
        }
        else{
            ans[7] = 1
           
        }
      setimg(btn8)
       
    }
    @IBAction func btn9(sender: UIButton) {
        if toggle() == 0{
            ans[8] = 0
        }
        else{
            ans[8] = 1
        }
        setimg(btn9)
        

    }
  }

