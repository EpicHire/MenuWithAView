//
//  ContextMenuIdentifierView.swift
//  MenuWithAView
//
//  Created by Seb Vidal on 11/05/2025.
//

import UIKit
import SwiftUI
import ContextMenuAccessoryStructs

struct ContextMenuIdentifierView<Content: View>: UIViewRepresentable {
    let accessoryView: () -> Content
    
    func makeUIView(context: Context) -> some UIView {
        let rootView = accessoryView()
        let hostingView = _UIHostingView(rootView: rootView)
        let identifierView = ContextMenuIdentifierUIView(accessoryView: hostingView)
        
        return identifierView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

class ContextMenuIdentifierUIView: UIView {
    let accessoryView: UIView
    
    init(accessoryView: UIView) {
        self.accessoryView = accessoryView
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
