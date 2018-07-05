//
//  ViewController.swift
//  CalculatorExam
//
//  Created by yunjin_choi on 2018. 6. 25..
//  Copyright © 2018년 yunjin_choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultSum: UILabel!
    var tmpSum : Int = 0
    var displayText : String = ""
    var op : String = ""
    var first :String = ""
    var second:String = ""
    let opArray : Array = ["+" , "-" , "*" , "%" , "C" , "="]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("시작")
    
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberClickEvent( _ sender : UIButton) {
        let number = sender.titleLabel?.text
        
        if opArray.contains(number!) {
            if number! == "=" {
                calculator(first , resultSum.text! )
                
            }else if number! == "C"{
                op = ""
                first = ""
                second = ""
                resultSum.text = "0"
            }else {
                op = number!
                first = resultSum.text!
                resultSum.text = ""
            }
            
        }else {
            if resultSum.text == "0"  || resultSum.text == ""{
                displayText = (sender.titleLabel?.text)!
            }else {
                displayText += (sender.titleLabel!.text)!
            }
            resultSum.text = displayText
        }
       
    }
   
    func calculator(_ value1:String , _ value2 : String ){
        switch op {
        case "+":
            resultSum.text = "\(Int(value1)!+Int(value2)!)"
            
        case "-":
            resultSum.text = "\(Int(value1)!-Int(value2)!)"
            
        case "*":
            resultSum.text = "\(Int(value1)!*Int(value2)!)"
            
        case "%":
            resultSum.text = "\(Int(value1)! / Int(value2)!)"
        
        default:
            print("error")
        }
    }
    
    
    
}

