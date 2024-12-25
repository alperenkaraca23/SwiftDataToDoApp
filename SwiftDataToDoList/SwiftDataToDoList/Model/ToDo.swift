//
//  ToDo.swift
//  SwiftDataToDoList
//
//  Created by Alperen KARACA on 26.12.2024.
//

import Foundation
import SwiftData

@Model
final class ToDo {
    var name : String
    var priority : Int
    
    init(name: String, priority: Int) {
        self.name = name
        self.priority = priority
    }
}
