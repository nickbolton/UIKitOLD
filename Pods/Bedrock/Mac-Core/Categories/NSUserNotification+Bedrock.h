//
//  NSUserNotification+Bedrock.h
//  Bedrock
//
//  Created by Nick Bolton on 1/14/13.
//  Copyright (c) 2013 Pixelbleed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserNotification (Bedrock)

+ (void)postNotification:(NSString *)title
         informativeText:(NSString *)informativeText
                userInfo:(NSDictionary *)userInfo;
+ (void)postNotification:(NSString *)title
         informativeText:(NSString *)informativeText
                    icon:(NSImage *)icon
                userInfo:(NSDictionary *)userInfo;
+ (void)postNotification:(NSString *)title
         informativeText:(NSString *)informativeText;

@end
