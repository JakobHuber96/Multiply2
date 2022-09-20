//
//  ViewController.swift
//  Multiply2
//
//  Created by Huber, Jakob - Student on 9/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstNumber: UITextField!
    
    
    
    
    
    @IBOutlet var secondNumber: UITextField!
    
    var firstNumberString = ""
    
  var secondNumberString = ""
    
    var firstNumberDouble = 0.0
  
    var secondNumberDouble = 0.0
    
    var thirdNumberDouble = 0.0
    
    var thirdNumberText = ""
  
    var valueOf64 = ""
    
    var valueOf64Int = 64.0
    
    var finalNumberPrint = 0.0

    var thirdNumberDoubleInt = 0
    
    var evenDecider = 0
    
    var evenMore = 0
    
    var thirdNumberFloor = 0.0
    
    var thirdNumberInt = 0
    
    // doubles use "." without quoations or else it becomes string
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
       if finalSum.text == "Label" {
           finalSum.isHidden  = true
       
       
       }
    }
    

    @IBOutlet var finalSum: UILabel!
    
    
    @IBAction func buttonPress(_ sender: Any) {
        
        finalSum.isHidden  = false
        
        
        firstNumberString = firstNumber.text ?? "0"
        // ?? means optional datatype it provides a default value to the data just incase the user gives you garbage
        
        secondNumberString = secondNumber.text ?? "0"
        
        firstNumberDouble = Double (firstNumberString) ?? 0.0
        
        secondNumberDouble = Double (secondNumberString) ?? 0.0
        
        secondNumber.resignFirstResponder()
        
        firstNumber.resignFirstResponder()
        thirdNumberDouble = firstNumberDouble + secondNumberDouble
        
        print(firstNumberDouble)
        print(secondNumberDouble)
        print(thirdNumberDouble)
        
        finalSum.text = "\(thirdNumberDouble)"
        
  //          finalSum.text = "\(finalNumberPrint)"
        
       if thirdNumberDouble == 64.0 {
           sixtyFourImage.isHidden = false
           sixtyFourImage.image = UIImage(named: "donkeyKong")
      
          }
        
         else if thirdNumberDouble != 64.0 {  sixtyFourImage.isHidden  = true
            
             
             
            
       
       }
        
        thirdNumberFloor = floor(thirdNumberDouble)
        print (thirdNumberFloor)
        
        thirdNumberInt = Int(thirdNumberFloor)
        

        
//        if evenMore == 0 { funnyImages.image = UIImage(named: "Monke")
            
            if thirdNumberFloor == thirdNumberDouble {
            
                evenDecider = thirdNumberInt
                 
                
                       evenMore = evenDecider % 2
                print(evenMore)
                
                if evenMore == 0 { funnyImages.image = UIImage(named: "Monke")
                    funnyImages.isHidden  = false
            
                    
                }
                
                else if evenMore == 1 { funnyImages.image = UIImage(named: "noJoke")
                    
                    funnyImages.isHidden  = false
                }
            }
        
        if finalSum.text == "0.0" {
            
            finalSum.isHidden  = true
            
        }
        
        
        
    }

    @IBOutlet var funnyImages: UIImageView!
    @IBOutlet var sixtyFourImage: UIImageView!
    
    @IBAction func Clear(_ sender: Any) {
        sixtyFourImage.isHidden  = true
        funnyImages.isHidden  = true
        secondNumber.text = ""
        firstNumber.text = ""
        finalSum.isHidden  = true
    }
    
   // if thirdNumberDouble == 0.0 {
   //     finalSum.isHidden   = true
//}
}
