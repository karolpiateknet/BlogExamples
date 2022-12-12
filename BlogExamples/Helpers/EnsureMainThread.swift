//
//  EnsureMainThread.swift
//  BlogExamples
//
//  Created by Karol Piatek on 12/12/2022.
//

import Foundation

/// Function ensures that code will be executed on MainThread.
func ensureMainThread(closure: @escaping () -> Void) {
    if Thread.isMainThread {
        closure()
    } else {
        DispatchQueue.main.async(execute: closure)
    }
}
