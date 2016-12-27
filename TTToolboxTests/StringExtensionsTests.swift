//
//  TTToolboxTests.swift
//  TTToolboxTests
//
//  Created by Pawel Urbanek on 26/12/2016.
//  Copyright © 2016 Pawel Urbanek. All rights reserved.
//

import XCTest
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
}
