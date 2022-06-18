//
//  NewTaskView.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import SwiftUI

struct NewTaskView: View {
  
  var taskStore: TaskStore
  
  @Environment(\.presentationMode) var presentationMode
  
  @State var text = ""
  
  var body: some View {
    Form {
      TextField("Task Name", text: $text)
      Button("Add") {
        self.taskStore.tasks.append(Task(name: text))
        self.presentationMode.wrappedValue.dismiss()
      }
      .disabled(text.isEmpty)
    }
  }
}

struct NewTaskView_Previews: PreviewProvider {
  static var previews: some View {
    NewTaskView(taskStore: TaskStore())
  }
}
