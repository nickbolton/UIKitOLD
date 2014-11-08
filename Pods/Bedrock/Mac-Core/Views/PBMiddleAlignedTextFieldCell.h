//
//  PBMiddleAlignedTextFieldCell.h
//  Bedrock
//
//  Created by Nick Bolton on 2/2/11.
//  Copyright (c) 2013 Pixelbleed. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PBMiddleAlignedTextFieldCell : NSTextFieldCell {
}

@property (nonatomic, assign) NSInteger yoffset;
@property (nonatomic, assign) NSInteger leftInset;
@property (nonatomic, assign) NSInteger rightInset;

@end
