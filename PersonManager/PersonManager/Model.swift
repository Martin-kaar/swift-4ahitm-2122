//
//  Model.swift
//  PersonManager
//
//  Created by Martin Kaar on 02.12.21.
//

import Foundation

class Model {
    var names:[[String]] = []
    
    func addName(firstName:String, lastName:String){
        if (firstName != "" || lastName != "") {
            names.append([firstName,lastName])
        }
    }
    
}
