//
//  IndexedCollection.swift
//  TaskList
//
//  Created by Sotheavuth Nguon on 18/6/22.
//  Copyright (c) 2022 Canadia Bank Plc. All rights reserved.
//


import Foundation

public struct IndexedCollection<Base: RandomAccessCollection>: RandomAccessCollection {
  let base: Base

  public init(_ base: Base) {
    self.base = base
  }
}

//MARK: RandomAccessCollection
public extension IndexedCollection {
  typealias Index = Base.Index
  typealias Element = (index: Index, element: Base.Element)

  var startIndex: Index { base.startIndex }

  var endIndex: Index { base.endIndex }

  func index(after i: Index) -> Index {
    base.index(after: i)
  }

  func index(before i: Index) -> Index {
    base.index(before: i)
  }

  func index(_ i: Index, offsetBy distance: Int) -> Index {
    base.index(i, offsetBy: distance)
  }

  subscript(position: Index) -> Element {
    (index: position, element: base[position])
  }
}
