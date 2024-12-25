
```markdown
# ToDoApp with Swift Data and SwiftUI

**ToDoApp** is a simple and intuitive task management application designed to demonstrate the integration of **Swift Data** with a modern **SwiftUI** interface. Inspired by the **MVVM architecture**, this project emphasizes clean code organization, effective state management, and essential functionalities for a To-Do application.

## Features

- **Task Management**: Add, update, and delete tasks with ease.  
- **State Management**: Efficient handling of UI states for a seamless user experience.  
- **MVVM-Inspired Design**: Ensures a clear separation of concerns for better maintainability.  
- **Swift Data Integration**: Implements Swift's latest data management features for a robust and efficient data layer.  
- **SwiftUI Interface**: A user-friendly and visually appealing UI designed with SwiftUI.  

## Technologies Used

- **Swift**: Core programming language.  
- **SwiftUI**: For building the application’s interface.  
- **Swift Data**: For efficient and modern data persistence.  
- **MVVM Pattern**: Inspired by MVVM for clean code and scalability.  

## How It Works

1. **Data Persistence**:  
   Tasks are stored using Swift Data, ensuring efficient and reliable data handling.  

2. **State Management**:  
   State variables and bindings are used to dynamically update the UI in response to data changes.  

3. **MVVM Structure**:  
   - **Model**: Defines the structure of a task and handles data persistence.  
   - **ViewModel**: Acts as a mediator between the View and the Model, handling business logic.  
   - **View**: Displays the task list and provides interaction options like adding or editing tasks.  



```
```
## Folder Structure


ToDoApp/
├── Models/
│   ├── ToDo.swift                # Task model
├── View/
│   ├── ToDoListView.swift       # View handling task logic
├── Screen/
│   ├── AddToDoScreen.swift           # Screen for adding new tasks
│   ├── ListScreen.swift              # Main screen displaying the task list
│   ├── ToDoDetailScreen.swift        # Screem for editing existing tasks
```


## Video Demo  



https://github.com/user-attachments/assets/6729d88a-a7a5-453c-8953-9ea8734bdb6a


```

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/alperenkaraca23/SwiftDataToDoApp.git
   
2. Open the project in Xcode.  
3. Build and run the app on your desired simulator or device.
```
## Usage

1. **Add Task**: Click the "AddToDo" button to add a new task.  
2. **Edit Task**: Select a task to update its details.  
3. **Delete Task**: Swipe left on a task to delete it.  

## Future Improvements

- Add categories for better task organization.  
- Integrate notifications for task reminders.  
- Enhance UI with animations and additional design elements.  
