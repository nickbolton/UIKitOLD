//
//  DataModel.m
//  UIKit
//
//  Created by Nick Bolton on 11/3/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)initWithTitle:(NSString *)title
                     leftIcon:(UIImage *)leftIcon
                    rightIcon:(UIImage *)rightIcon {
    
    self = [super init];
    if (self) {
        self.title = title;
        self.leftIcon = leftIcon;
        self.rightIcon = rightIcon;
    }
    return self;
}

@end
