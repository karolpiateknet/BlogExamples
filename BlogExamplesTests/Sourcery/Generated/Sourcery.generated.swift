// Generated using Sourcery 1.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

@testable import BlogExamples

// https://github.com/krzysztofzablocki/Sourcery/blob/master/Templates/Templates/AutoEquatable.stencil with small isClosure tweak

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs

// MARK: - TitleSubtitleActionModel AutoEquatable

extension TitleSubtitleActionModel: Equatable {}

public func == (lhs: TitleSubtitleActionModel, rhs: TitleSubtitleActionModel) -> Bool {
    guard lhs.title == rhs.title else { return false }
    guard lhs.subtitle == rhs.subtitle else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
