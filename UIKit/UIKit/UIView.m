//
//  UIView.m
//  AppMap
//
//  Created by Nick Bolton on 10/30/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "UIView.h"
#import "UIColor.h"

@implementation UIView

#pragma mark - Getters and Setters

- (UIColor *)backgroundColor {
    UIColor *color = (id)[UIColor colorWithCGColor:self.layer.backgroundColor];
    return color;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    self.wantsLayer = backgroundColor != nil;
    self.layer.backgroundColor = backgroundColor.CGColor;
}

#pragma mark - Public

- (void)setNeedsDisplay {
    [self setNeedsDisplay:YES];
}

- (void)setNeedsLayout {
    [self setNeedsLayout:YES];
}

- (void)setNeedsUpdateConstraints {
    [self setNeedsUpdateConstraints:YES];
}

@end
