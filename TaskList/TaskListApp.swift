//
//  TaskListApp.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import SwiftUI

@main
struct TaskListApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView(taskStore: TaskStore())
    }
  }
}
