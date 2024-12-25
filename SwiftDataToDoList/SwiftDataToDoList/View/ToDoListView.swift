//
//  ToDoListView.swift
//  SwiftDataToDoList
//
//  Created by Alperen KARACA on 26.12.2024.
//

import SwiftUI

struct ToDoListView: View {
    
    let toDos : [ToDo]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos) { toDo in
                    NavigationLink(value: toDo) {
                        HStack {
                            Text(toDo.name)
                            Spacer()
                            Text(toDo.priority.description)
                        }
                    }
                   
                }.onDelete { indexSet in
                    indexSet.forEach { index in
                        let toDo = toDos[index]
                        context.delete(toDo)
                        
                        do {
                            try context.save()
                        } catch {
                            print(error.localizedDescription)
                        }
                    }
                }
            }.navigationDestination(for: ToDo.self) { toDo in
                ToDoDetailScreen(toDo: toDo)
            }
            .navigationTitle("ToDoApp")
        }
       
    }
}

#Preview {
    ToDoListView(toDos: [ToDo(name: "Test", priority: 123)]).modelContainer(for: [ToDo.self])
}
