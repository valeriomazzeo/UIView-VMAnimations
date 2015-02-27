# UIView-VMAnimations

[![Version](https://img.shields.io/cocoapods/v/UIView-VMAnimations.svg?style=flat)](http://cocoadocs.org/docsets/UIView-VMAnimations)
[![License](https://img.shields.io/cocoapods/l/UIView-VMAnimations.svg?style=flat)](http://cocoadocs.org/docsets/UIView-VMAnimations)
[![Platform](https://img.shields.io/cocoapods/p/UIView-VMAnimations.svg?style=flat)](http://cocoadocs.org/docsets/UIView-VMAnimations)

## Overview

UIView (VMAnimations) extends the UIView class to provide an easy way to animate UIView objects.

![Screencast](https://raw.githubusercontent.com/valeriomazzeo/UIView-VMAnimations/master/Resources/screencast.gif)

## Usage

The methods are probably self explanatory:

```
@interface UIView (VMAnimations)

#pragma mark - Pulse Animation

- (void)startPulse;
- (void)startPulseWithDuration:(NSTimeInterval)duration fromAlpha:(CGFloat)fromAlpha inset:(UIEdgeInsets)inset;

- (void)stopPulse;

#pragma mark - Convenience Methods

- (UIView *)viewSnapshot;

@end
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

UIView-VMAnimations is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "UIView-VMAnimations"

## Author

[Valerio Mazzeo](https://twitter.com/valeriomazzeo)

## License

UIView-VMAnimations is available under the MIT license. See the LICENSE file for more info.

