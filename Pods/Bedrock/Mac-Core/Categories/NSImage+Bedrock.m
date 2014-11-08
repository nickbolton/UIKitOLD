//
//  NSImage+Bedrock.m
//  Bedrock
//
//  Created by Nick Bolton on 12/23/12.
//  Copyright (c) 2012 Pixelbleed. All rights reserved.
//

#import "NSImage+Bedrock.h"
#import <QuickLook/QuickLook.h>

@implementation NSImage (Bedrock)

- (BOOL)isEqualToImage:(NSImage *)image {
    
    NSData *selfData = [self pngData];
    NSData *imageData = [image pngData];
    return [selfData isEqualToData:imageData];
}

- (NSData *)pngData {

    [self lockFocus];
    
    CGImageRef cgRef = [self CGImageForProposedRect:NULL context:nil hints:nil];
    NSBitmapImageRep *newRep = [[NSBitmapImageRep alloc] initWithCGImage:cgRef];
    [newRep setSize:[self size]];   // if you want the same resolution
    [self unlockFocus];
    return [newRep representationUsingType:NSPNGFileType properties:nil];
}


+ (NSImage *)imageWithPreviewOfFileAtPath:(NSString *)path
                                   ofSize:(NSSize)size
                                   asIcon:(BOOL)icon {

    NSURL *fileURL = [NSURL fileURLWithPath:path];
    if (!path || !fileURL) {
        return nil;
    }

    NSDictionary *dict = [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:icon]
                                                     forKey:(NSString *)kQLThumbnailOptionIconModeKey];
    CGImageRef ref = QLThumbnailImageCreate(kCFAllocatorDefault,
                                            (__bridge CFURLRef)fileURL,
                                            CGSizeMake(size.width, size.height),
                                            (__bridge CFDictionaryRef)dict);

    if (ref != NULL) {
        // Take advantage of NSBitmapImageRep's -initWithCGImage: initializer, new in Leopard,
        // which is a lot more efficient than copying pixel data into a brand new NSImage.
        // Thanks to Troy Stephens @ Apple for pointing this new method out to me.
        NSBitmapImageRep *bitmapImageRep = [[NSBitmapImageRep alloc] initWithCGImage:ref];
        NSImage *newImage = nil;
        if (bitmapImageRep) {
            newImage = [[NSImage alloc] initWithSize:[bitmapImageRep size]];
            [newImage addRepresentation:bitmapImageRep];

            if (newImage) {
                CFRelease(ref);
                return newImage;
            }
        }
        CFRelease(ref);
    } else {
        // If we couldn't get a Quick Look preview, fall back on the file's Finder icon.
        NSImage *icon = [[NSWorkspace sharedWorkspace] iconForFile:path];
        if (icon) {
            [icon setSize:size];
        }
        return icon;
    }

    return nil;
}

+ (NSImage *)stretchedImageWithParts:(NSArray *)imageParts
                                size:(NSSize)size
                            vertical:(BOOL)vertical
                               alpha:(CGFloat)alpha {

    NSAssert(imageParts.count == 3, @"Three image parts needed");
    
    NSImage *image = [[NSImage alloc] initWithSize:size];
    [image lockFocus];
    NSDrawThreePartImage(NSMakeRect(0, 0, size.width, size.height),
                         [imageParts objectAtIndex:0],
                         [imageParts objectAtIndex:1],
                         [imageParts objectAtIndex:2],
                         vertical,
                         NSCompositeSourceOver,
                         alpha,
                         NO);

    [image unlockFocus];
    return image;
}

@end
