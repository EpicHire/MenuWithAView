//
//  File.swift
//  MenuWithAView
//
//  Created by Aether Aurelia and Seb Vidal on 11/05/2025.
//

import Foundation

extension Array {
    func compact<T>() -> [T] where Element == Optional<T> {
        compactMap { $0 }
    }
}
