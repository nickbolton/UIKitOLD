//
//  AppDelegate.m
//  UIKit
//
//  Created by Nick Bolton on 11/1/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    ViewController *viewController = [ViewController new];
    self.window.contentView = viewController.view;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
