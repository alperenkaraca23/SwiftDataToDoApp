//
//  ContentView.swift
//  SwiftDataToDoList
//
//  Created by Alperen KARACA on 26.12.2024.
//

import SwiftUI
import SwiftData

struct AddToDoScreen: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var name : String = ""
    @State private var priority : Int?
    
    private var isFormValid : Bool {
        !name.trimmingCharacters(in: .whitespaces).isEmpty && priority != nil
    }
    
    var body: some View {
        NavigationStack{
            
            Form {
                
                TextField("Name", text: $name)
                TextField("Priority", value: $priority , format : .number )
                
            }.navigationTitle("ToDoApp")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button {
                            //Dismiss Action
                            dismiss()
                        } label: {
                            Text("Dismiss")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            //Save Action
                            guard let priority = priority else { return }
                            let toDo = ToDo(name: name, priority: priority)
                            
                            context.insert(toDo)
                            
                            do{
                                try context.save()
                            } catch {
                                print(error.localizedDescription)
                            }
                            
                            dismiss()
                            
                        } label: {
                            Text("Save")
                        }.disabled(!isFormValid)

                    }
                }
        }
        
    }
}

#Preview {
    AddToDoScreen().modelContainer(for: [ToDo.self])
}
