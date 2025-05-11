//
//  ContextMenuAccessoryAnchor.h
//  ContextMenuAccessoryAnchor
//
//  Created by Seb Vidal on 11/05/2025.
//

#import <Foundation/Foundation.h>

//! Project version number for ContextMenuAccessoryAnchor.
FOUNDATION_EXPORT double ContextMenuAccessoryAnchorVersionNumber;

//! Project version string for ContextMenuAccessoryAnchor.
FOUNDATION_EXPORT const unsigned char ContextMenuAccessoryAnchorVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <ContextMenuAccessoryAnchor/PublicHeader.h>

typedef struct {
    unsigned long long attachment;
    unsigned long long alignment;
    double attachmentOffset;
    double alignmentOffset;
    long long gravity;
} ContextMenuAccessoryAnchor;
