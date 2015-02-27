//
//  VMViewController.m
//  UIView-VMAnimations
//
//  Created by Valerio Mazzeo on 02/27/2015.
//  Copyright (c) 2014 Valerio Mazzeo. All rights reserved.
//

#import "VMViewController.h"
#import "UIView+VMAnimations.h"

@interface VMViewController ()

@end

@implementation VMViewController

- (void)viewDidLoad
{
     [super viewDidLoad];
	
     [self.switchView addTarget:self action:@selector(switchDidChangeValue:) forControlEvents:UIControlEventValueChanged];
     
     self.buttonOrange.layer.cornerRadius = self.buttonOrange.frame.size.width / 2.0f;
    
     [self.label startPulse];
     [self.button startPulse];
     [self.buttonOrange startPulse];
     [self.buttonGreen startPulse];
     [self.progressView startPulse];
     [self.switchView startPulse];
}

- (void)switchDidChangeValue:(UISwitch *)sender
{
     sender.on ? [sender startPulse] : [sender stopPulse];
}

@end
