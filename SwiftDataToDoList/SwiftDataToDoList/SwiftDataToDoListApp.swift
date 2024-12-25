//
//  SwiftDataToDoListApp.swift
//  SwiftDataToDoList
//
//  Created by Alperen KARACA on 26.12.2024.
//

import SwiftUI

@main
struct SwiftDataToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListScreen()
            }
        }.modelContainer(for: [ToDo.self])
    }
}
