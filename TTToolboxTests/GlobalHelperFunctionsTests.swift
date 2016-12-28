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
  override func setUp() {
    super.setUp()
  }

  func testDelay() {
    var value = 0
    let done = self.expectation(description: "Change value")

    delay(seconds: 0.5, completion: {
      value = 1
      done.fulfill()
      XCTAssert(true)
    })

    XCTAssertEqual(value, 0, "Does not get executed right away")

    waitForExpectations(timeout: 2, handler: { _ in
      XCTAssertEqual(value, 1, "Value was incremented after delay")
    })
  }
}
