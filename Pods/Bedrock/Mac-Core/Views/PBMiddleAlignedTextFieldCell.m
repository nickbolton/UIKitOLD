//
//  PBMiddleAlignedTextFieldCell.m
//  Bedrock
//
//  Created by Nick Bolton on 2/2/11.
//  Copyright (c) 2013 Pixelbleed. All rights reserved.
//

#import "PBMiddleAlignedTextFieldCell.h"

@implementation PBMiddleAlignedTextFieldCell

- (NSRect)titleRectForBounds:(NSRect)theRect {
    NSRect titleFrame = [super titleRectForBounds:theRect];
    NSSize titleSize = [[self attributedStringValue] size];

    if (_leftInset > 0) {
        titleFrame.origin.x += _leftInset;
        titleFrame.size.width -= _leftInset;
    }

    if (_rightInset > 0) {
        titleFrame.size.width -= _rightInset;
    }

    titleFrame.origin.y = _yoffset + theRect.origin.y - .5 + (theRect.size.height - titleSize.height) / 2.0;
    return NSIntegralRect(titleFrame);
}

- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
    NSRect titleRect = [self titleRectForBounds:cellFrame];
    [[self attributedStringValue] drawInRect:titleRect];
}

@end
