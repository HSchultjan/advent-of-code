//
//  ArrayVisitor.swift
//  Day5
//
//  Created by Hendrik Schultjan on 05.12.17.
//  Copyright © 2017 Hendrik Schultjan. All rights reserved.
//

import Foundation

class ArrayVisitor<T> : Visitor<Int, T> {

    var nextIndex: Int?
    var newValue: T?

    override func visit(index: Int, value: T) {
        let modified = modifier(index, value)
        self.nextIndex = modified.0
        self.newValue = modified.1
        super.visit(index: index, value: value)
    }
}

