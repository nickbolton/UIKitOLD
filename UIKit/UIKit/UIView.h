//
//  UIView.h
//  AppMap
//
//  Created by Nick Bolton on 10/30/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class UIColor;

@interface UIView : NSView

@property (nonatomic, strong) UIColor *backgroundColor;

- (void)setNeedsDisplay;
- (void)setNeedsLayout;
- (void)setNeedsUpdateConstraints;

@end
