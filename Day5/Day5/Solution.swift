//
//  Solution.swift
//  Day5
//
//  Created by Hendrik Schultjan on 05.12.17.
//  Copyright © 2017 Hendrik Schultjan. All rights reserved.
//

import Foundation

protocol Solution {
    func solve(values: [Int]) -> Int?
}

class CountingVisitor: ArrayVisitor<Int> {
    var stepCount = 0

    override func visit(index: Int, value: Int) {
        defer {
            stepCount += 1
        }
        super.visit(index: index, value: value)
    }
}

class Part1Solution: Solution {
    func solve(values: [Int]) -> Int? {
        let solver = Solver(values: values, visitor: CountingVisitor(modifier: {
            return ($0 + $1, $1 + 1)
        }))
        return solver.solve()
    }
}

class Part2Solution: Solution {
    func solve(values: [Int]) -> Int? {
        var lastValue = 0
        let solver = Solver(values: values, visitor: CountingVisitor(modifier: { (index, value) -> (Int?, Int) in
            lastValue = value
            return (index + value, value + ((lastValue >= 3) ? -1 : 1))
        }))
        return solver.solve()
    }
}
