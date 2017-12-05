//
//  Day5Part1Tests.swift
//  Day5Tests
//
//  Created by Hendrik Schultjan on 05.12.17.
//  Copyright © 2017 Hendrik Schultjan. All rights reserved.
//

import XCTest
@testable import Day5

class Day5Part1Tests: XCTestCase {

    let testData = """
    0
    3
    0
    1
    -3
    """

    func testPart1() {
        let values = self.testData.split(separator: "\n").flatMap { Int($0) }
        let solution = Part1Solution()
        XCTAssertEqual(5, solution.solve(values: values))
    }
    
}
