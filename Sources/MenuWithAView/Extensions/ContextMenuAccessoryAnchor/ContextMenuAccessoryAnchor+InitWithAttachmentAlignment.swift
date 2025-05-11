//
//  ContextMenuAccessoryAnchor+InitWithAttachmentAlignment.swift
//  MenuWithAView
//
//  Created by Aether Aurelia and Seb Vidal on 11/05/2025.
//

import ContextMenuAccessoryStructs

extension ContextMenuAccessoryAnchor {
    init(attachment: UInt64, alignment: UInt64) {
        self.init(attachment: attachment, alignment: alignment, attachmentOffset: 0, alignmentOffset: 0, gravity: 0)
    }
}
