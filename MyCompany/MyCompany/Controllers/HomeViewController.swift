//
//  ViewController.swift
//  MyCompany
//
//  Created by Walter A Ramirez on 2/1/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToResults", sender: self)
    }
}



struct FieldEmployees {
    var name : String
    var willPassThisClass = false
}
