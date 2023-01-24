//
//  4_IfStringContainsAnother.swift
//
//
//  Created by Piotr Wesołowski on 24/01/2023.
//

import Foundation

extension String {
    func checkIfOneStringContainsAnother(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

assert("Hello, world".checkIfOneStringContainsAnother("Hello") == true, "One string doesn't contain second one.")

assert("Hello, world".checkIfOneStringContainsAnother("WORLD") == true, "One string doesn't contain second one.")

assert("Hello, world".checkIfOneStringContainsAnother("Goodbye") == true, "One string doesn't contain second one.")
