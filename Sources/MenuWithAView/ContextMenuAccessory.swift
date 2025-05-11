//
//  ContextMenuAccessory.swift
//  MenuWithAView
//
//  Created by Aether Aurelia Seb Vidal on 11/05/2025.
//

import SwiftUI

public struct ContextMenuAccessory<Content: View>: View {
    let configuration: Configuration
    let content: () -> Content

    public init(placement: Placement, content: @escaping () -> Content) {
        self.configuration = Configuration(placement: placement)
        self.content = content
    }
    
    public var body: some View {
        content()
    }
}

extension ContextMenuAccessory {
    public typealias Location = ContextMenuAccessoryLocation
    
    public typealias Placement = ContextMenuAccessoryPlacement
    
    public typealias Alignment = ContextMenuAccessoryAlignment
    
    public typealias TrackingAxis = ContextMenuAccessoryTrackingAxis
    
    typealias Configuration = ContextMenuAccessoryConfiguration
}

public enum ContextMenuAccessoryLocation: Int {
    case preview = 1
    case menu = 2
    case background = 3
}

public enum ContextMenuAccessoryPlacement: Int {
    case top = 1
    case leading = 2
    case center = 3
    case bottom = 4
    case trailing = 5
}

public enum ContextMenuAccessoryAlignment: Int {
    case top = 1
    case leading = 2
    case center = 3
    case bottom = 4
    case trailing = 5
}

public struct ContextMenuAccessoryTrackingAxis: OptionSet, Sendable {
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public static var xAxis: ContextMenuAccessoryTrackingAxis {
        return ContextMenuAccessoryTrackingAxis(rawValue: 1 << 0)
    }
    
    public static var yAxis: ContextMenuAccessoryTrackingAxis {
        return ContextMenuAccessoryTrackingAxis(rawValue: 1 << 1)
    }
}

struct ContextMenuAccessoryConfiguration {
    var location: ContextMenuAccessoryLocation = .preview
    
    var placement: ContextMenuAccessoryPlacement = .center
    
    var alignment: ContextMenuAccessoryAlignment = .center
    
    var trackingAxis: ContextMenuAccessoryTrackingAxis = [.xAxis, .yAxis]
}
