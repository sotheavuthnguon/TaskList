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
  var body: some View {
    NavigationLink(destination: TaskEditingView(task: $task)) {
      Text(task.name)
    }
  }
}

struct RowView_Previews: PreviewProvider {
  static var previews: some View {
    RowView(task: .constant(Task(name: "Learn SwiftUI")))
      .previewLayout(.sizeThatFits)
    
  }
}
