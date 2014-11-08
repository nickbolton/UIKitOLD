//
//  DataModel.h
//  UIKit
//
//  Created by Nick Bolton on 11/3/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

@interface DataModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIImage *leftIcon;
@property (nonatomic, strong) UIImage *rightIcon;

- (instancetype)initWithTitle:(NSString *)title
                     leftIcon:(UIImage *)leftIcon
                    rightIcon:(UIImage *)rightIcon;

@end
