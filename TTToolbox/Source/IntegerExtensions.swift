//
//  IntegerExtensions.swift
//  TTToolbox
//
//  Created by Pawel Urbanek on 02/01/2017.
//  Copyright © 2017 Pawel Urbanek. All rights reserved.
//

import Foundation

public extension Int {
  func times(handler: (Int) -> Void) {
    guard self >= 1 else {
      return
    }

    for index in 0...(self - 1) {
      handler(index)
    }
  }
}
