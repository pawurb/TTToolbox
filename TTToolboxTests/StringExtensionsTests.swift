
//  TTToolboxTests.swift
//  TTToolboxTests
//
//  Created by Pawel Urbanek on 26/12/2016.
//  Copyright © 2016 Pawel Urbanek. All rights reserved.
//

import XCTest
import Foundation
@testable import TTToolbox

class StringExtensionsTests: XCTestCase {
  override func setUp() {
    super.setUp()
  }

  func testMatchesExact() {
    var hostnameRegex: NSRegularExpression!
    do {
      let regexString =  "([a-z0-9|-]+\\.){0,2}[a-z0-9|-]+\\.[a-z]+"
      hostnameRegex = try NSRegularExpression(pattern: regexString, options: .caseInsensitive)
    } catch let error as NSError {
      XCTFail("Error setting up regex: \(error)")
    }

    XCTAssertEqual("reddit.com".matchesExact(regex: hostnameRegex), true, "Should return true if matches")
    XCTAssertEqual("subdomain.reddit.com".matchesExact(regex: hostnameRegex), true, "Should return true if matches")
    XCTAssertEqual("http://google.com".matchesExact(regex: hostnameRegex), false, "Should return false if does not match")
    XCTAssertEqual("www@wp.pl".matchesExact(regex: hostnameRegex), false, "Should return false if does not match")
  }

  func testSplit() {
    XCTAssertEqual("h-e-y".split(by: "-"), ["h", "e", "y"], "Splits the string correctly")
    XCTAssertEqual("h-e-y".split(by: " "), ["h-e-y"], "Splits the string correctly")
  }

  func testSlice() {
    XCTAssertEqual("12345678".slice(from: 0, to: 1)!, "1", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 0, to: 3)!, "123", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 2, to: 3)!, "345", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 2, to: 1)!, "3", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 2, to: 0)!, "", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 12, to: 0), nil, "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 0, to: 0)!, "", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: 0, to: -1), nil, "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: -2, to: 2)!, "78", "Slices string correctly")
    XCTAssertEqual("12345678".slice(from: -3, to: 1)!, "6", "Slices string correctly")
  }
}
