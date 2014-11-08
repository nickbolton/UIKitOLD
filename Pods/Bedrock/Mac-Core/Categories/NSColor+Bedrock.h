//
//  NSColor+Bedrock.h
//  Bedrock
//
//  Created by Nick Bolton on 1/16/13.
//  Copyright (c) 2013 Pixelbleed. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (Bedrock)

+ (NSColor *)colorWithRGBHex:(UInt32)hex;
+ (NSColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;
- (NSColor *)colorWithAlpha:(CGFloat)alpha;
- (NSInteger)hexValue;
- (NSColor *)contrastingColor;
- (void)getRGBComponents:(CGFloat *)red
                   green:(CGFloat *)green
                    blue:(CGFloat *)blue
                   alpha:(CGFloat *)alpha;


@end
