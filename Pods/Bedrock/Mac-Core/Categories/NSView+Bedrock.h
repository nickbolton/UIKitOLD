//
//  NSView+Bedrock.h
//  SocialScreen
//
//  Created by Nick Bolton on 1/5/13.
//  Copyright (c) 2013 Pixelbleed. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QuartzCore/QuartzCore.h>

typedef void(^NSViewAnimationCompletionBlock)(id userContext);

@interface NSView (Bedrock)

- (void)DEBUG_colorizeSelfAndSubviews;

- (void)animateToNewFrame:(NSRect)newFrame
                 duration:(CGFloat)duration
           timingFunction:(CAMediaTimingFunction *)timingFunction
          completionBlock:(void (^)(void))completionBlock;

- (void)animateFadeIn:(CGFloat)duration
       timingFunction:(CAMediaTimingFunction *)timingFunction
      completionBlock:(void (^)(void))completionBlock;

- (void)animateFadeOutIn:(CGFloat)duration
             middleBlock:(void (^)(void))middleBlock
         completionBlock:(void (^)(void))completionBlock;

- (void)animateFadeOutIn:(CGFloat)duration
              animations:(void (^)(void))animations
             middleBlock:(void (^)(void))middleBlock
         completionBlock:(void (^)(void))completionBlock;

- (void)animateFadeOut:(CGFloat)duration
        timingFunction:(CAMediaTimingFunction *)timingFunction
       completionBlock:(void (^)(void))completionBlock;

- (void)rotate:(CGFloat)angle
      duration:(CGFloat)duration
timingFunction:(CAMediaTimingFunction *)timingFunction
completionBlock:(void (^)(void))completionBlock;

- (void)fadeInView:(NSView *)newView;

- (void)fadeInView:(NSView *)newView
       middleBlock:(void (^)(void))middleBlock
   completionBlock:(void (^)(void))completionBlock;

- (CALayer *)layerFromContents;

- (void)pulseAnimation:(CGFloat)duration
           userContext:(id)userContext
       completionBlock:(NSViewAnimationCompletionBlock)completionBlock;

- (void)fixLeftEdge:(BOOL)fixed;
- (void)fixRightEdge:(BOOL)fixed;
- (void)fixTopEdge:(BOOL)fixed;
- (void)fixBottomEdge:(BOOL)fixed;
- (void)fixWidth:(BOOL)fixed;
- (void)fixHeight:(BOOL)fixed;

- (void)dumpViewHierarchy:(NSUInteger)indentLevel;
- (void)findViews:(NSMutableArray **)views ofType:(Class)clazz;
- (void)findFirstView:(NSView **)view ofType:(Class)clazz;
- (id)findFirstParentOfType:(Class)clazz;

- (NSPoint)locationOfMouse;

- (NSImage *)pngSnapshot;

- (NSPoint)mouseLocationInLocalCoordinates;

@end
