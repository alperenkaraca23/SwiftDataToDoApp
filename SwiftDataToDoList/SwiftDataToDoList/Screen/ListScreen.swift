//
//  ListScreen.swift
//  SwiftDataToDoList
//
//  Created by Alperen KARACA on 26.12.2024.
//

import SwiftUI
import SwiftData

struct ListScreen: View {
    
    @Query(sort: \ToDo.priority , order: .forward) private var toDos : [ToDo]
    @State private var isAddToDoPresented : Bool = false
    
    var body: some View {
        
            ToDoListView(toDos: toDos)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("AddToDo") {
                        isAddToDoPresented = true
                    }
                }
            }.sheet(isPresented: $isAddToDoPresented) {
                NavigationStack {
                    AddToDoScreen()
                }
            }
    }
}

#Preview {
    NavigationStack{
        ListScreen().modelContainer(for: [ToDo.self])
    }
}
