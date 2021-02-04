//
//  ViewController.swift
//  MyCompany
//
//  Created by Walter A Ramirez on 2/1/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var namesTV: UITableView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var employeeTableView: UITableView!
    
    let class01  = TrainingClass()
    override func viewDidLoad() {
       
        class01.className = "Passing Class"
        class01.addEmployeeToGroup(employee: FieldEmployee(name: "Walter Ramirez", email: "walram@email.com", willPassThisClass: true))
        class01.addEmployeeToGroup(employee: FieldEmployee(name: "Dom Scafati", email: "domscafati@email.com", willPassThisClass: true))
        class01.addEmployeeToGroup(employee: FieldEmployee(name: "Weiguo Tao", email: "weiguot@email.com", willPassThisClass: true))
        
        namesTV.dataSource = self
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    
    
    //How many rows there are in the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return class01.Fes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        cell.textLabel?.text = class01.Fes[indexPath.row].name
        return UITableViewCell()
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "goToResults", let destination = segue.destination as?
    //            ResultViewController{
    //            destination.selectedEmployee = self.selectedEmployee
    //        }
    //    }
    
}



