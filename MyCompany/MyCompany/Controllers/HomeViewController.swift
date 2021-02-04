//
//  ViewController.swift
//  MyCompany
//
//  Created by Walter A Ramirez on 2/1/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var addFEButton: UIButton!
    @IBOutlet weak var removeEmployee: UIButton!
    
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
    
    @IBAction func removeEmployeeButtonPressed(_ sender: UIButton) {
        if class01.classSize > 0 {
            class01.Fes.removeFirst()
            namesTV.reloadData()
       }
        
    }
    
    
    
    @IBAction func addFeButtonPressed(_ sender: UIButton) {
        class01.addEmployeeToGroup(employee: FieldEmployee(name: "Imposter", email: "sus@imposter"))
        

        // Must put -1 so that it doesn't crash 
        namesTV.insertRows(at:  [IndexPath(row: class01.Fes.count - 1, section: 0)], with: .right)
    }
    //How many rows there are in the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return class01.Fes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = class01.Fes[indexPath.row].name
        cell.detailTextLabel?.text = class01.Fes[indexPath.row].email
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected FE: \(class01.Fes[indexPath.row].name)")
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "goToResults", let destination = segue.destination as?
    //            ResultViewController{
    //            destination.selectedEmployee = self.selectedEmployee
    //        }
    //    }
    
}



