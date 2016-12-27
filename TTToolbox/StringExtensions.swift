//
//  StringExtensions.swift
//  TTToolbox
//
//  Created by Pawel Urbanek on 26/12/2016.
//  Copyright © 2016 Pawel Urbanek. All rights reserved.
//

import Foundation

extension String {
  func matchesExact(regex: NSRegularExpression) -> Bool {
    let match = regex.matches(in: self,
                              options: [],
                              range: NSMakeRange(0, characters.count))
    if let matchElement = match.first {
      let range = matchElement.rangeAt(0)
      return range.location == 0 &&
        range.length == characters.count
    } else {
      return false
    }
  }

  func split(by separator: String) -> [String] {
    return characters.split(separator: Character.init(separator))
      .map(String.init)
  }

  func slice(from: Int, to: Int) -> String? {
    if(from < 0) {
//      let fromIndex = index(endIndex, offsetBy: from)
//      let toIndex = index(fromIndex, offsetBy: to)
//
//      return self[fromIndex...toIndex]
      return ""
    } else {
      if to < 0 {
        return nil
      }
      
      if to == 0 {
        if from > characters.count {
          return nil
        }
        return ""
      }
      
      let fromIndex = index(startIndex, offsetBy: from)
      let toIndex = index(startIndex, offsetBy: (to+from-1))
      return self[fromIndex...toIndex]
    }
  }
}
