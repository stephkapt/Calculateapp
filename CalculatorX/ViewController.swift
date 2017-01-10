//
//  ViewController.swift
//  CalculatorX
//
//  Created by Kaptchouang Stephane on 2016/12/19.
//  Copyright © 2016年 Kaptchouang Stephane. All rights reserved.
//

import UIKit
//import Foundation



class ViewController: UIViewController {
    
    var numberinputs:Double = 0
    var previousinput:Double = 0
    var flag = false
    var operation = 0
    var a:String = ""
    @IBOutlet var labelResult: UILabel!
    
    
    
    
   
    @IBAction func inputs(_ sender: UIButton) {
     labelResult.text = ""
        if flag == true{
            a = a + String(sender.tag-1)
            flag = true
            numberinputs = Double(a)!
            labelResult.text = labelResult.text! + String(numberinputs)
             a = ""
       }else {
         
            a =  a + String(sender.tag-1)
            previousinput = Double(a)!
            labelResult.text = labelResult.text! + String(previousinput)
            a = ""
       }
        
    }
    
    
    @IBAction func signbuttons(_ sender: UIButton) {
        
      //  previousinput = Double(labelResult.text!)!
        if labelResult.text != "" && sender.tag != 14 && sender.tag != 15 //
        {
            
            if sender.tag == 11 { // multiplication
                labelResult.text = String(previousinput) + "x"
                
                
            }else if sender.tag == 12 { // division
                labelResult.text = String(previousinput) + "/"
                
                
            }else if sender.tag == 13 { // addition
                labelResult.text = String(previousinput) + "+"
                
                
            }else if sender.tag == 0 { // substraction
                labelResult.text = String(previousinput) + "ー"
                
            }
            
            flag = true
            operation = sender.tag
        
        }else if sender.tag == 14 {
            
            if operation ==  11 {
                
                labelResult.text = String(previousinput) + "x" +  String(numberinputs) + "=" + String(previousinput * numberinputs)
                 previousinput = previousinput * numberinputs
                
            }else if  operation == 12{
                labelResult.text = String(previousinput) + "/" +  String(numberinputs) + "=" + String(previousinput / numberinputs)
                previousinput = previousinput / numberinputs
                
            }else if operation == 13 {
                
                labelResult.text = String(previousinput) + "+" +  String(numberinputs) + "=" + String(previousinput + numberinputs )
                previousinput = previousinput + numberinputs
                
            }else if operation == 0 {
                
                labelResult.text = String(previousinput) + "-" +  String(numberinputs) + "=" + String(previousinput - numberinputs)
                 previousinput = previousinput - numberinputs
            }
        }else if sender.tag == 15{
            
            labelResult.text = "Enter a number"
            numberinputs = 0
            previousinput = 0;
            operation = 0
            flag = false
        }
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

