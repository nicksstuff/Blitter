//
//  NamingJSONFields.swift
//  TwitterClone
//
//  Created by David Ungar on 8/29/16.
//
//

import Foundation

protocol NamingForClientJSONConversion {
    var rawValue: String {get}
    var nameForClientJSON: String {get}
}
extension NamingForClientJSONConversion {
    var nameForClientJSON: String {
        return rawValue
    }
}

protocol FieldNamingForClientJSONConversion {
    associatedtype FieldNames: NamingForClientJSONConversion
}

extension Post        .FieldNames: NamingForClientJSONConversion {}
extension Users       .FieldNames: NamingForClientJSONConversion {}
extension Relationship.FieldNames: NamingForClientJSONConversion {}