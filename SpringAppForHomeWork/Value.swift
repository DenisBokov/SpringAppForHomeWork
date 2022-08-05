//
//  Value.swift
//  SpringAppForHomeWork
//
//  Created by Denis Bokov on 05.08.2022.
//

import Foundation

struct Value {
    let duration: Double
    let delay: Double
    let force: Double
    
    static func getResult() -> Value {
        Value(
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 1...2),
            force: Double.random(in: 1...2)
        )
    }
}
