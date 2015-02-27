//
//  UIView+VMAnimations.m
//  Pods
//
//  Created by Valerio Mazzeo on 27/02/2015.
//  Copyright (c) 2014 Valerio Mazzeo. All rights reserved.
//

#import "UIView+VMAnimations.h"
#import <objc/runtime.h>

static char kVMAssociatedPulseView;

@implementation UIView (VMAnimations)

#pragma mark - Pulse Animation

- (UIView *)pulseView
{
    return objc_getAssociatedObject(self, &kVMAssociatedPulseView);
}

- (void)setPulseView:(UIView *)pulseView
{
    objc_setAssociatedObject(self, &kVMAssociatedPulseView, pulseView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)startPulse
{
    [self startPulseWithDuration:0.8f fromAlpha:0.5f inset:UIEdgeInsetsMake(-12.0f, -12.0f, -12.0f, -12.0f)];
}

- (void)startPulseWithDuration:(NSTimeInterval)duration fromAlpha:(CGFloat)fromAlpha inset:(UIEdgeInsets)inset
{
    UIView *pulseView = [self viewSnapshot];
    
    if (pulseView) {
        
        if (self.pulseView) {
            [self.pulseView removeFromSuperview];
        }
        
        self.pulseView = pulseView;
        
        pulseView.alpha = fromAlpha;
        
        [self insertSubview:pulseView atIndex:0];
        
        [UIView
         animateWithDuration:duration
         delay:0.0
         options:UIViewAnimationOptionRepeat | UIViewAnimationCurveEaseOut
         animations:^{
             pulseView.frame = UIEdgeInsetsInsetRect(pulseView.frame, inset);
             pulseView.alpha = 0.0;
         }
         completion:nil];
    }
}

- (void)stopPulse
{
    if (self.pulseView) {
        [self.pulseView removeFromSuperview];
        self.pulseView = nil;
    }
}

#pragma mark - Convenience Methods

- (UIView *)viewSnapshot
{
    UIView *snapshot = nil;
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    if (image) {
        snapshot = [[UIImageView alloc] initWithImage:image];
        snapshot.layer.borderColor = self.layer.borderColor;
        snapshot.layer.borderWidth = self.layer.borderWidth;
        snapshot.layer.cornerRadius = self.layer.cornerRadius;
    }
    
    return snapshot;
}

@end
