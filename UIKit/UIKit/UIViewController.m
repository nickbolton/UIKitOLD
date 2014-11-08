//
//  UIViewController.m
//  AppMap
//
//  Created by Nick Bolton on 10/30/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "UIViewController.h"

@interface UIViewController ()

@end

@implementation UIViewController

- (id)init {
    self = [super initWithNibName:NSStringFromClass([UIViewController class]) bundle:nil];
    
    if (self != nil) {
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Public

- (void)didReceiveMemoryWarning {
}

@end
