//
//  ViewController.swift
//  isItPrime
//
//  Created by Ronald Hernandez on 4/4/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }




    @IBAction func buttonTapped(sender: AnyObject) {

        var primeNumber = numberTextField.text.toInt();

//check if it's no nill

        if primeNumber != nil {

        var isPrime = true;

        if primeNumber == 1{

            isPrime = false;
        }
        if primeNumber != 2 && primeNumber != 1 {


            for var i = 2; i < primeNumber; i++ {
                if primeNumber! % i == 0 {
                    isPrime = false;
                    
                }
                
                }
            
            }
            if isPrime == true{
                 resultsLabel.text = "It is Prime!"
            }else{
                 resultsLabel.text = "Not Prime - Try again!!!"
            }
        }
    }
}

