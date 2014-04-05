//
//  TOLViewController.m
//  paintcode-test
//
//  Created by Lars Anderson on 3/8/13.
//  Copyright (c) 2013 theonlylars. All rights reserved.
//

#import "TOLViewController.h"
#import "TOLLightLayer.h"

@interface TOLViewController ()

@property (nonatomic, strong) TOLLightLayer *lightLayer;

@end

@implementation TOLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lightLayer = [TOLLightLayer layer];
    self.lightLayer.lightColor = [UIColor blackColor].CGColor;
    self.lightLayer.frame = CGRectMake(20.f, 20.f, 240.f, 240.f);
    self.lightLayer.contentsScale = [UIScreen mainScreen].scale;
    
    [self.view.layer addSublayer:self.lightLayer];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIColor *newColor = [UIColor redColor];
    CGColorRef newColorRef = CGColorRetain(newColor.CGColor);
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"lightColor"];
    animation.duration = 1.0f;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    animation.fromValue = (id)self.lightLayer.lightColor;
    animation.toValue = (__bridge id)newColorRef;
    animation.autoreverses = YES;
    animation.repeatCount = HUGE_VALF;
    
    CGColorRelease(newColorRef);
    
    [self.lightLayer addAnimation:animation forKey:@"pulse-animation"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
