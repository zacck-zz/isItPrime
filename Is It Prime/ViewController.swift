//
//  ViewController.swift
//  Is It Prime
//
//  Created by Isaac Osiemo on 1/8/15.
//  Copyright (c) 2015 appbaseLtd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mNumber: UITextField!
    
    @IBOutlet var mResultLabel: UILabel!
    
    @IBAction func mPrimeCheckButton(sender: AnyObject) {
        var number = mNumber.text.toInt()
        if number != nil
        {
        var isPrime = true //boolean
        
        if number == 1 {
            isPrime = false
        }
        if number != 2 && number != 1  {
            for var i = 2 ; i < number ; i++ {
                
                if number! % i == 0{
                    //this means its not prime
                    isPrime = false
                }
                
            }
            
            println(isPrime)
            if isPrime == true
            {
                mResultLabel.text = "Prime"
            }
            else
            {
                mResultLabel.text = "Not Prime"
            }
            
        }
        }
        else
        {
            mResultLabel.text = "please insert a number"
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

