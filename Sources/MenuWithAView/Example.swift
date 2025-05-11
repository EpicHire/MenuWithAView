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
        Text("Hello")
            .contextMenu {
                Button {
                    
                } label: {
                    Label("Button", systemImage: "circle")
                }

            } accessoryView: {
                AccessoryView(placement: .leading) {
                    Text("Accessory View")
                }
            }

    }
}

#Preview {
    MenuWithAView_Example()
}
