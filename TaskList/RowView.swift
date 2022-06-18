//
//  RowView.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import SwiftUI

struct RowView: View {
  @Binding var task: Task
  let checkmark = Image(systemName: "checkmark")
  var body: some View {
    NavigationLink(destination: TaskEditingView(task: $task)) {
      if task.completed {
        checkmark
      } else {
        EmptyView()
      }
      Text(task.name)
        .strikethrough(task.completed)
    }
  }
}

struct RowView_Previews: PreviewProvider {
  static var previews: some View {
    RowView(task: .constant(Task(name: "Learn SwiftUI")))
      .previewLayout(.sizeThatFits)
    
  }
}
