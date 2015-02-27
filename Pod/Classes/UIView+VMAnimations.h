//
//  UIView+VMAnimations.h
//  Pods
//
//  Created by Valerio Mazzeo on 27/02/2015.
//  Copyright (c) 2014 Valerio Mazzeo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (VMAnimations)

#pragma mark - Pulse Animation

- (void)startPulse;
- (void)startPulseWithDuration:(NSTimeInterval)duration fromAlpha:(CGFloat)fromAlpha inset:(UIEdgeInsets)inset;

- (void)stopPulse;

#pragma mark - Convenience Methods

- (UIView *)viewSnapshot;

@end
