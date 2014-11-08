//
//  ViewController2.m
//  UIKit
//
//  Created by Nick Bolton on 11/8/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [UIView new];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:view];
    
    [NSLayoutConstraint addWidthConstraint:100.0f toView:view];
    [NSLayoutConstraint addHeightConstraint:100.0f toView:view];
    [NSLayoutConstraint horizontallyCenterView:view];
    [NSLayoutConstraint verticallyCenterView:view];
}

@end
