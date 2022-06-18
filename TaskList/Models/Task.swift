//
//  Task.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import Foundation

struct Task: Identifiable {
  let id = UUID()
  var name: String
  var completed = false
}
