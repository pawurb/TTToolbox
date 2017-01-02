//
//  IntegerExtensionsTests.swift
//  TTToolbox
//
//  Created by Pawel Urbanek on 02/01/2017.
//  Copyright © 2017 Pawel Urbanek. All rights reserved.
//

import XCTest
import Foundation
@testable import TTToolbox

class IntegerExtensionsTests: XCTestCase {
  func testsTimes() {
    let done = expectation(description: "Executes the block")
    
    1.times { index in
      done.fulfill()
    }

    var expectedIndex = 0

    3.times { index in
      XCTAssertEqual(index, expectedIndex, "Passes in the correct index value that gets incremented")
      expectedIndex += 1
    }

    0.times { _ in
      XCTFail("Does not execute block for 0 and lower values")
    }
    
    (-1).times { _ in
      XCTFail("Does not execute block for 0 and lower values")
    }

    waitForExpectations(timeout: 1, handler: nil)
  }
}
