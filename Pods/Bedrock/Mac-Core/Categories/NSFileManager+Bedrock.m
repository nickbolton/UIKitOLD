//
//  NSFileManager+Bedrock.m
//  Bedrock
//
//  Created by Nick Bolton on 12/19/12.
//  Copyright (c) 2012 Pixelbleed. All rights reserved.
//

#import "NSFileManager+Bedrock.h"

@implementation NSFileManager (Bedrock)

+ (void)deleteItemAtPathIfNecessary:(NSString *)itemPath error:(NSError **)error {

    NSFileManager *fm = [NSFileManager defaultManager];

    if ([fm fileExistsAtPath:itemPath]) {
        [fm removeItemAtPath:itemPath error:error];
    }
}

@end
