//
//  Solver.swift
//  Day5
//
//  Created by Hendrik Schultjan on 05.12.17.
//  Copyright © 2017 Hendrik Schultjan. All rights reserved.
//

import Foundation

class Solver {
    var values: [Int]
    var counter: Int = 0

    let visitor: CountingVisitor

    init(values: [Int], visitor: CountingVisitor) {
        self.values = values
        self.visitor = visitor
    }

    func solve() -> Int? {
        visitor.visit(index: 0, value: values[0])
        while let newIndex = visitor.nextIndex {
            guard newIndex < self.values.count else { break }
            visitor.visit(index: newIndex, value: values[newIndex])
            guard let newValue = visitor.newValue else { return nil }
            values[newIndex] = newValue
        }

        return visitor.stepCount
    }
}
