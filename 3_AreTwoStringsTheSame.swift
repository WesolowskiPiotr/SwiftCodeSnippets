//
//  3_AreTwoStringsTheSame.swift
//
//
//  Created by Piotr Wesołowski on 24/01/2023.
//

import Foundation

func checkIfStringsContainsSameCharacters(first: String, second: String) -> Bool {
    return first.sorted() == second.sorted()
}

assert(checkIfStringsContainsSameCharacters(first: "abcd", second: "dcba") == true, "Strings contains different characters.")

assert(checkIfStringsContainsSameCharacters(first: "abcd", second: "abcde") == true, "Strings contains different characters.")
