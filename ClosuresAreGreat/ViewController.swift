//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func performOperation(with:Double... , operation:(Double, Double)->Double)->Double {
        var result = 0.0
        result = with.reduce(result, operation)
        
        return result
    }
    

    
}
