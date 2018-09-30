//
//  ViewController.swift
//  Do-Try-Catch
//
//  Created by Arturs Vitins on 30/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

enum Numbers: Error {
    case numberTooLarge
    case numberTooSmall
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try checkNumber(number: 3)
            print("Number between 5-10")
        } catch Numbers.numberTooLarge {
            print("Number is too large")
        } catch Numbers.numberTooSmall {
            print("Number is too small")
        } catch {
            print("Something went wrong")
        }
        
    }
    
    
    func checkNumber (number: Int) throws {
        
        if number > 10 {
            throw Numbers.numberTooLarge
            
        } else if number < 5 {
            throw Numbers.numberTooSmall
            
        }
        
    }
    
    
}
