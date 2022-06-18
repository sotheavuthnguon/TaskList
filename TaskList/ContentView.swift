//
//  ContentView.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import SwiftUI

struct ContentView: View {
  
  @ObservedObject var taskStore: TaskStore
  @State var modalIsPresented = false
  
  var body: some View {
    
    NavigationView {
      List {
        ForEach(taskStore.prioritizedTasks) { index in
          SectionView(prioritiedTasks: $taskStore.prioritizedTasks[index])
        }
      }
      .listStyle(GroupedListStyle())
      .navigationBarTitle("Tasks")
      .navigationBarItems(
        leading: EditButton(),
        trailing: Button(action: {
          self.modalIsPresented = true
        }) {
          Image(systemName: "plus")
        })
    }
    .sheet(isPresented: $modalIsPresented) {
      NewTaskView(taskStore: taskStore)
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(taskStore: TaskStore())
  }
}
