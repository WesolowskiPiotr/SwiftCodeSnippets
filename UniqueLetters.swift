//
//  UniqueLetters.swift
//  
//
//  Created by Piotr Wesołowski on 24/01/2023.
//

import Foundation

func uniqueLetters(input: String) -> Bool {
    return Set(input).count == input.count
}

assert(uniqueLetters(input: "No duplicates") == true, "Letters duplicated")

assert(uniqueLetters(input: "Letters duplicated") == true, "Letters duplicated")
