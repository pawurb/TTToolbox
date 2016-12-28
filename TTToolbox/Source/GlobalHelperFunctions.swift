//
//  GlobalHelperFunctions.swift
//  TTToolbox
//
//  Created by Pawel Urbanek on 27/12/2016.
//  Copyright © 2016 Pawel Urbanek. All rights reserved.
//

import Foundation

public func delay(miliseconds: Double, completion: @escaping ()-> Void) {
  let seconds = miliseconds / 1000
  DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}

public func debounce(delay: Int, queue:DispatchQueue, action: @escaping (()->())) -> ()->() {
  var lastFireTime = DispatchTime.now()
  let dispatchDelay = DispatchTimeInterval.milliseconds(delay)

  return {
    let dispatchTime: DispatchTime = lastFireTime + dispatchDelay
    queue.asyncAfter(deadline: dispatchTime, execute: {
      let when: DispatchTime = lastFireTime + dispatchDelay
      let now = DispatchTime.now()
      if now.rawValue >= when.rawValue {
        lastFireTime = DispatchTime.now()
        action()
      }
    })
  }
}
