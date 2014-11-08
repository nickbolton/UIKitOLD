//
//  UILabel.m
//  UIKit
//
//  Created by Nick Bolton on 11/8/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "UILabel.h"

@implementation UILabel

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.bezeled = NO;
    self.drawsBackground = NO;
    self.editable = NO;
    self.selectable = NO;
}

#pragma mark - Getters and Setters

- (NSString *)text {
    return self.stringValue;
}

- (void)setText:(NSString *)text {
    self.stringValue = text;
}

@end
