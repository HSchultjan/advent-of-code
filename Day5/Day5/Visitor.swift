//
//  Solver.swift
//  Day5
//
//  Created by Hendrik Schultjan on 05.12.17.
//  Copyright © 2017 Hendrik Schultjan. All rights reserved.
//

import Foundation

protocol Visiting: class {
    associatedtype ValueType
    associatedtype IndexType
    typealias Modifier = (IndexType, ValueType) ->  (IndexType?, ValueType)

    func visit(index: IndexType, value: ValueType)

    init(modifier: @escaping Modifier)
}


class Visitor<T, U>: Visiting {
    typealias IndexType = T
    typealias ValueType = U

    let modifier: Modifier

    required init(modifier: @escaping (T, U) -> (T?, U)) {
        self.modifier = modifier
    }

    func visit(index: T, value: U) {}
}
