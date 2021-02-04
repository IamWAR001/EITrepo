//
//  ResultViewController.swift
//  MyCompany
//
//  Created by Walter A Ramirez on 2/2/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var confirmButton: UIButton!
    
    var selectedEmployee : FieldEmployee?
    
        override func viewDidLoad() {
        super.viewDidLoad()
            topLabel.text = "Your Class is empty"
        
        
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
    }
    
    
    
    
    // Do any additional setup after loading the view.
}

