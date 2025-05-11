//
//  View+ContextMenuAccessories.swift
//  MenuWithAView
//
//  Created by Aether Aurelia and Seb Vidal on 11/05/2025.
//

import SwiftUI
import UIKit
import ContextMenuAccessoryStructs

private struct AccessoryWrapper<AccessoryView: View>: View {
    let configuration: ContextMenuAccessoryConfiguration
    let accessory: () -> AccessoryView

    var body: some View {
        ContextMenuIdentifierView(accessoryView: {
            AccessoryItem(configuration: configuration) {
                accessory()
            }
        })
    }
}

public extension View {
    func contextMenuAccessory<AccessoryView: View>(
        placement: ContextMenuAccessoryPlacement? = nil,
        location: ContextMenuAccessoryLocation? = nil,
        alignment: ContextMenuAccessoryAlignment? = nil,
        trackingAxis: ContextMenuAccessoryTrackingAxis? = nil,
        @ViewBuilder accessory: @escaping () -> AccessoryView
    ) -> some View {
        var config = ContextMenuAccessoryConfiguration()
        if let placement = placement { config.placement = placement }
        if let location = location { config.location = location }
        if let alignment = alignment { config.alignment = alignment }
        if let trackingAxis = trackingAxis { config.trackingAxis = trackingAxis }
        
        let wrapped = background {
            AccessoryWrapper(configuration: config, accessory: accessory)
                .accessibilityHidden(true)
        }
        return wrapped.id(config.id)
    }
}

#Preview {
    MenuWithAView_Example()
}
