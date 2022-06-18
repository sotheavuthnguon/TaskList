//
//  SectionView.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import SwiftUI

struct SectionView: View {
  
  @Binding var prioritiedTasks: TaskStore.PrioritizedTasks
  
  var body: some View {
    ForEach(prioritiedTasks.tasks) { index in
      RowView(task: $prioritiedTasks.tasks[index])
    }
    .onMove { sourceIndices, destinationIndex in
      prioritiedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
    }
    .onDelete { indexSet in
      prioritiedTasks.tasks.remove(atOffsets: indexSet)
    }
  }
}
