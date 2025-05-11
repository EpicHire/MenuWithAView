//
//  AccessoryView.swift
//  MenuWithAView
//
//  Created by Aether Aurelia Seb Vidal on 11/05/2025.
//

import SwiftUI

public struct AccessoryView<Content: View>: View {
    let placement: Edge
    let content: () -> Content
    
    public var body: some View {
        content()
    }
}

public extension AccessoryView {
    enum Placement: Int {
        case top = 1
        case leading = 2
        case center = 3
        case bottom = 4
        case trailing = 5
    }
}
