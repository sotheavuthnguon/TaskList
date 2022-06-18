//
//  TaskEditingView.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import SwiftUI

struct TaskEditingView: View {
  
  @Binding var task: Task
  var body: some View {
    Form {
      TextField("Name", text: $task.name)
    }
  }
}

struct TaskEditingView_Previews: PreviewProvider {
  static var previews: some View {
    TaskEditingView(task: .constant(Task(name: "Learn SwiftUI")))
  }
}
