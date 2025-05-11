//
//  ContextMenuAccessoryStructs.h
//  ContextMenuAccessoryStructs
//
//  Created by Seb Vidal on 11/05/2025.
//

#import <Foundation/Foundation.h>

//! Project version number for ContextMenuAccessoryStructs.
FOUNDATION_EXPORT double ContextMenuAccessoryStructsVersionNumber;

//! Project version string for ContextMenuAccessoryStructs.
FOUNDATION_EXPORT const unsigned char ContextMenuAccessoryStructsVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <ContextMenuAccessoryStructs/PublicHeader.h>

typedef struct {
    unsigned long long attachment;
    unsigned long long alignment;
    double attachmentOffset;
    double alignmentOffset;
    long long gravity;
} ContextMenuAccessoryAnchor;
