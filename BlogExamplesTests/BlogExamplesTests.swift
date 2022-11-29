//
//  BlogExamplesTests.swift
//  BlogExamplesTests
//
//  Created by Karol Piatek on 29/11/2022.
//

@testable import BlogExamples
import XCTest

final class BlogExamplesTests: XCTestCase {
    func testAutoEquatableModelsDoNotCompareClosures() throws {
        let lhsModel = TitleSubtitleActionModel(
            title: "Title",
            subtitle: "Subtitle",
            action: { print("Some impl") }
        )

        let rhsModel = TitleSubtitleActionModel(
            title: "Title",
            subtitle: "Subtitle",
            action: { print("Some other impl") }
        )

        XCTAssertEqual(lhsModel, rhsModel)
    }
}
