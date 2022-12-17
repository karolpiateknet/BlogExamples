//
//  UserService.swift
//  BlogExamples
//
//  Created by Karol Piatek on 12/12/2022.
//

import Foundation

// sourcery: AutoMockable
protocol UserService {
    var isLoggedIn: Bool { get }
}
