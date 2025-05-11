//
//  Example.swift
//  MenuWithAView
//
//  Created by Aether on 11/05/2025.
//

import SwiftUI

public struct MenuWithAView_Example: View {
    
    @State var placement: ContextMenuAccessoryPlacement = .bottom
    
    public init(){}
    
    public var body: some View {
        NavigationStack{
            VStack{
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
                        AccessoryItem(placement: placement) {
                            Text("Accessory View")
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                
                Divider()
                
                VStack{
                    switch placement{
                    case .top:
                        Text("Top")
                    case .bottom:
                        Text("Bottom")
                    case .center:
                        Text("Center")
                    case .leading:
                        Text("Leading")
                    case .trailing:
                        Text("Trailing")
                    }
                }
                .frame(maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    MenuWithAView_Example()
}
