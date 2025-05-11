//
//  UIContextMenuInteraction+AccessoryViewWithConfiguration.swift
//  MenuWithAView
//
//  Created by Aether Aurelia and Seb Vidal on 11/05/2025.
//

import UIKit
import SwiftUI

extension UIContextMenuInteraction {
    static func accessoryView(configuration: AccessoryItem.Configuration) -> UIView? {
        let accessoryViewClassString = ["View", "Accessory", "Menu", "Context", "UI", "_"].reversed().joined()
        let accessoryViewClass = NSClassFromString(accessoryViewClassString) as? UIView.Type
        
        guard let accessoryViewClass else { return nil }
        
        let accessoryView = accessoryViewClass.init()
        accessoryView.setValue(configuration.location.rawValue, forKey: "location")
        
        return accessoryView
    }
}
