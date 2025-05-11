//
//  View+ContextMenuAccessoryView.swift
//  MenuWithAView
//
//  Created by Aether Aurelia and Seb Vidal on 11/05/2025.
//

import SwiftUI
import UIKit

public extension View {
    func contextMenu<MenuItems, Content>(@ViewBuilder menuItems: () -> MenuItems, @ViewBuilder accessoryView: @escaping () -> AccessoryView<Content>) -> some View where MenuItems : View, Content : View {
        background {
            ContextMenuIdentifierView(accessoryView: accessoryView)
                .accessibilityHidden(true)
        }
        .contextMenu(menuItems: menuItems)
    }
}
