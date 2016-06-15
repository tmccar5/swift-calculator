//
//  ViewController.swift
//  Calculator
//
//  Created by Tom McCarthy on 6/14/16.
//  Copyright © 2016 Tom McCarthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var userInput1: UITextField!
    @IBOutlet weak var userInput2: UITextField!
    @IBOutlet weak var userOp: UILabel!
    @IBOutlet weak var segmentOpsOutlet: UISegmentedControl!
    
    var userNum1:Double = 0.0
    var userNum2:Double = 0.0
    var answer:Double = 0.0
    
    
    @IBAction func calculateAction(sender: AnyObject) {
        userNum1 = Double(userInput1.text!)!
        userNum2 = Double(userInput2.text!)!
        
        segmentOpsAction(self)
        labelAnswer.text = String(answer)
    }
    
    
    @IBAction func segmentOpsAction(sender: AnyObject) {
        if segmentOpsOutlet.selectedSegmentIndex == 0 {
            userOp.text = "+"
            answer = userNum1 + userNum2
        }
        else if segmentOpsOutlet.selectedSegmentIndex == 1 {
            userOp.text = "-"
            answer = userNum1 - userNum2
        }
        else if segmentOpsOutlet.selectedSegmentIndex == 2 {
            userOp.text = "÷"
            answer = userNum1 / userNum2
        }
        else if segmentOpsOutlet.selectedSegmentIndex == 3 {
            userOp.text = "*"
            answer = userNum1 * userNum2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

