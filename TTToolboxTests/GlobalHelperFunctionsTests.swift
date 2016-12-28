//
//  GlobalHelperFunctionsTests.swift
//  TTToolbox
//
//  Created by Pawel Urbanek on 27/12/2016.
//  Copyright © 2016 Pawel Urbanek. All rights reserved.
//

import XCTest
import Foundation
@testable import TTToolbox

class GlobalHelperFunctionsTest: XCTestCase {
  func testDelay() {
    var value = 0
    let done = expectation(description: "Execute block after delay")

    delay(miliseconds: 500, completion: {
      value = 1
      done.fulfill()
      XCTAssert(true)
    })

    XCTAssertEqual(value, 0, "Does not get executed right away")

    waitForExpectations(timeout: 2, handler: { _ in
      XCTAssertEqual(value, 1, "Value was incremented after delay")
    })
  }

  func testDebounce() {
    var value = 0
    let done = expectation(description: "Execute block after delay")

    func incrementor() {
      value += 1
    }

    let debouncedIncrementor = debounce(delay: 200, queue: DispatchQueue.main, action: {
      incrementor()
    })

    for i in 1...10 {
      debouncedIncrementor()
      if i == 10 {
        delay(miliseconds: 300, completion: {
          done.fulfill()
        })
      }
    }

    XCTAssertEqual(value, 0, "Debounced function does not get executed right away")

    waitForExpectations(timeout: 2, handler: { _ in
      XCTAssertEqual(value, 1, "Value was incremented only once")
    })
  }
}
