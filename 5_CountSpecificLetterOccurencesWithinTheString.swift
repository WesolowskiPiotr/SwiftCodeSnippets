//
//  5_CountSpecificLetterOccurencesWithinTheString.swift
//
//
//  Created by Piotr Wesołowski on 24/01/2023.
//

import Foundation

func checkHowManyTimesLetterAppearsWithinTheString(input: String, letter: Character) -> Int {
    
    var letterCount = 0
    
    for char in input {
        if letter == char {
            letterCount += 1
        }
    }
    
    return letterCount
}

func checkHowManyTimesLetterAppearsWithinTheString_2(input: String, letter: Character) -> Int {
    return input.reduce(0) { $1 == letter ? $0 + 1 : $0 }
}

func checkHowManyTimesLetterAppearsWithinTheString_3(input: String, letter: String) -> Int {
    let array = input.map { String($0) }
    let counted = NSCountedSet(array: array)
    
    return counted.count(for: letter)
}

func checkHowManyTimesLetterAppearsWithinTheString_4(input: String, letter: String) -> Int {
    let modified = input.replacingOccurrences(of: letter, with: "")
    
    return input.count - modified.count
}

print("\(checkHowManyTimesLetterAppearsWithinTheString(input: "The rain in Spain", letter: "a")) 'a' letters within the string 'The rain in Spain'")

print("\(checkHowManyTimesLetterAppearsWithinTheString_2(input: "The rain in Spain", letter: "a")) 'a' letters within the string 'The rain in Spain'")

print("\(checkHowManyTimesLetterAppearsWithinTheString_3(input: "The rain in Spain", letter: "a")) 'a' letters within the string 'The rain in Spain'")

print("\(checkHowManyTimesLetterAppearsWithinTheString_4(input: "The rain in Spain", letter: "a")) 'a' letters within the string 'The rain in Spain'")
