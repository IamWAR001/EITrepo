//
//  TrainingClass.swift
//  MyCompany
//
//  Created by Walter A Ramirez on 2/2/21.
//

import Foundation


class TrainingClass {
    
    var className : String = ""
    var classSize : Int
    
    var Fes : [FieldEmployees] = [FieldEmployees]()
    
    init() {
        classSize = 0
    }
                   // this is a type of func
    func addEmployeeToGroup(employee: FieldEmployees){
        Fes.append(employee)
        classSize = Fes.count
    }
    func removeEmployeeFromGroup(name: String) {
        
        let index = Fes.firstIndex(where: { one in
            one.name == name
        })
        if index != nil {
            Fes.remove(at: index!)
        }
        
    }
    func howManyInGroup() -> Int {
        return classSize
    }
}
