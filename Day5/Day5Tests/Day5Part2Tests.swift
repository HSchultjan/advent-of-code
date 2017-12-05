//
//  Day5PartTests.swift
//  Day5Tests
//
//  Created by Hendrik Schultjan on 05.12.17.
//  Copyright © 2017 Hendrik Schultjan. All rights reserved.
//

import XCTest
@testable import Day5

class Day5Part2Tests: XCTestCase {

    let testData = """
    0
    3
    0
    1
    -3
    """

    func testPart2() {
        let values = self.testData.split(separator: "\n").flatMap { Int($0) }
        let solution = Part2Solution()
        XCTAssertEqual(10, solution.solve(values: values))
    }

    
}
