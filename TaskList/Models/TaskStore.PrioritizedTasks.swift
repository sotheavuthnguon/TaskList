//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


extension TaskStore {
  struct PrioritizedTasks {
    let priority: Task.Priority
    var tasks: [Task]
  }
}

extension TaskStore.PrioritizedTasks: Identifiable {
  var id: Task.Priority { priority }
}
