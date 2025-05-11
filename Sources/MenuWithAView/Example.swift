//
//  Example.swift
//  MenuWithAView
//
//  Created by Aether on 11/05/2025.
//

import SwiftUI

public struct MenuWithAView_Example: View {
    
    public init(){}
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(Color.primary.opacity(0.6), lineWidth: 2)
            .frame(width: 200, height: 100)
            .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: 10))
            .contextMenu {
                Button {
                    
                } label: {
                    Label("Button", systemImage: "circle")
                }
            } accessoryContent: {
                AccessoryItem(placement: .leading) {
                    Text("Accessory View")
                }
            }

    }
}

#Preview {
    MenuWithAView_Example()
}
