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
  
   
    
    // doubles use "." without quoations or else it becomes string
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var finalSum: UILabel!
    
    
    @IBAction func buttonPress(_ sender: Any) {
        firstNumberString = firstNumber.text ?? "0"
        // ?? means optional datatype it provides a default value to the data just incase the user gives you garbage
        
        secondNumberString = secondNumber.text ?? "0"
        
        firstNumberDouble = Double (firstNumberString) ?? 0.0
        
        secondNumberDouble = Double (secondNumberString) ?? 0.0
        
        thirdNumberDouble = firstNumberDouble + secondNumberDouble
        
        print(firstNumberDouble)
        print(secondNumberDouble)
        print(thirdNumberDouble)
        
        finalSum.text = "\(thirdNumberDouble)"
        
        
        
        
//        thirdNumberDouble = Double(thirdNumberText) ?? ""
        
      //  thirdNumberText =
    1
   }

    


}
