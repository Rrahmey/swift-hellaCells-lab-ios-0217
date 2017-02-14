//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Raquel Rahmey on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewControl: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var number: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = number {
            numberLabel.text = number
            navigationItem.title = number 
        }
    }
    
    
    
}
