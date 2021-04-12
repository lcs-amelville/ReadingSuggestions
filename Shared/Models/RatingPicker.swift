//
//  RatingPicker.swift
//  ReadingSuggestions
//
//  Created on 2021-03-10.
//

import Foundation

enum RatingPicker: String, Decodable {
    typealias RawValue = String

    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
}

let noSpecifiedRating = "None"
