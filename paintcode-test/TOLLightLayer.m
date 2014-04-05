//
//  TOLLightLayer.m
//  paintcode-test
//
//  Created by Lars Anderson on 3/8/13.
//  Copyright (c) 2013 theonlylars. All rights reserved.
//

#import "TOLLightLayer.h"

@implementation TOLLightLayer


/** Step 1: Let CoreAnimation generate the properties accessors
 at runtime for our animatable properties.
 */
@dynamic lightColor;

/** Step 2: Let CoreAnimation make multiple copies of this layer
 to use as the presentation layer. Similar to a copyWithZone:
 implementation. Many layer copies are used for presentation
 interpolation.
 */
- (id)initWithLayer:(id)layer {
    self = [super initWithLayer:layer];
    if (self) {
        if([layer isKindOfClass:[self class]]) {
            TOLLightLayer *lightLayer = (TOLLightLayer *)layer;
            self.lightColor = lightLayer.lightColor;
        }
    }
    return self;
}

/** Step 3: Tells CoreAnimation we need to re-draw for our
 custom animatable property when it is "changed" (always
 YES for now -- whether or not always returning YES is necessary
 or if it can be conditional).
 */
+ (BOOL)needsDisplayForKey:(NSString *)key{
    if ([key isEqualToString:@"lightColor"]) {
        return YES;
    }
    
    return [super needsDisplayForKey:key];
}

/** Step 4: Return an explicit animation (action) for our custom attribute
 so that CoreAnimation has something to interpolate. Animation curve,
 timing, etc all have an effect on how many times drawRect: is called.
 */
- (id<CAAction>)actionForKey:(NSString *)event{
    if ([event isEqualToString:@"lightColor"]) {
        CABasicAnimation *animation = [CABasicAnimation animation];
        
        /** This is really unnecessary as the default CAAnimation
         implementation does this anyway.
         */
        [animation setFromValue:[self.presentationLayer valueForKey:@"lightColor"]];
    }
    
    return [super actionForKey:event];
}


/** Step 5: Draw your stuff based on parameters (properties)
 that this layer accepts as input and that has been parameterized
 in the above method implementations.
 
 Step 6: Profit?
 */
- (void)drawInContext:(CGContextRef)ctx{
    //// General Declarations
    
    /** Manually push graphics context on the stack so we can
     use UI* methods in the layer drawing.
     */
    UIGraphicsPushContext(ctx);
    
    /** Literal copy-pasted PaintCode code using an imported SVG
     */
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    CGColorRef lightColor = self.lightColor;
    UIColor* color5 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];
    UIColor* color1 = [UIColor colorWithRed: 0.192 green: 0.192 blue: 0.192 alpha: 1];
    UIColor* color0 = [UIColor colorWithRed: 0.054 green: 0.054 blue: 0.054 alpha: 1];
    UIColor* color4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0.35];
    
    //// Gradient Declarations
    NSArray* linearGradient3167Colors = [NSArray arrayWithObjects:
                                         (id)color0.CGColor,
                                         (id)color1.CGColor, nil];
    CGFloat linearGradient3167Locations[] = {0, 1};
    CGGradientRef linearGradient3167 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient3167Colors, linearGradient3167Locations);
    NSArray* linearGradient3206Colors = [NSArray arrayWithObjects:
                                         (id)color4.CGColor,
                                         (id)color5.CGColor, nil];
    CGFloat linearGradient3206Locations[] = {0, 1};
    CGGradientRef linearGradient3206 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient3206Colors, linearGradient3206Locations);
    NSArray* linearGradient3163Colors = [NSArray arrayWithObjects:
                                         (id)color0.CGColor,
                                         (id)color1.CGColor, nil];
    CGFloat linearGradient3163Locations[] = {0, 1};
    CGGradientRef linearGradient3163 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient3163Colors, linearGradient3163Locations);
    
    //// layer1
    {
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(232.34, 116.17)];
        [bezierPath addLineToPoint: CGPointMake(232.34, 116.17)];
        [bezierPath addCurveToPoint: CGPointMake(116.17, 232.34) controlPoint1: CGPointMake(232.34, 180.33) controlPoint2: CGPointMake(180.33, 232.34)];
        [bezierPath addCurveToPoint: CGPointMake(0, 116.17) controlPoint1: CGPointMake(52.01, 232.34) controlPoint2: CGPointMake(0, 180.33)];
        [bezierPath addLineToPoint: CGPointMake(0, 116.17)];
        [bezierPath addCurveToPoint: CGPointMake(116.17, 0) controlPoint1: CGPointMake(0, 52.01) controlPoint2: CGPointMake(52.01, 0)];
        [bezierPath addCurveToPoint: CGPointMake(232.34, 116.17) controlPoint1: CGPointMake(180.33, 0) controlPoint2: CGPointMake(232.34, 52.01)];
        [bezierPath closePath];
        bezierPath.miterLimit = 4;
        
        bezierPath.lineCapStyle = kCGLineCapRound;
        
        bezierPath.lineJoinStyle = kCGLineJoinRound;
        
        CGContextSaveGState(context);
        [bezierPath addClip];
        CGContextDrawLinearGradient(context, linearGradient3163,
                                    CGPointMake(186.88, 206.07),
                                    CGPointMake(42.43, 29.29),
                                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        CGContextRestoreGState(context);
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(218.19, 116.17)];
        [bezier2Path addLineToPoint: CGPointMake(218.19, 116.17)];
        [bezier2Path addCurveToPoint: CGPointMake(116.17, 218.19) controlPoint1: CGPointMake(218.19, 172.51) controlPoint2: CGPointMake(172.51, 218.19)];
        [bezier2Path addCurveToPoint: CGPointMake(14.14, 116.17) controlPoint1: CGPointMake(59.82, 218.19) controlPoint2: CGPointMake(14.14, 172.51)];
        [bezier2Path addLineToPoint: CGPointMake(14.14, 116.17)];
        [bezier2Path addCurveToPoint: CGPointMake(116.17, 14.14) controlPoint1: CGPointMake(14.14, 59.82) controlPoint2: CGPointMake(59.82, 14.14)];
        [bezier2Path addCurveToPoint: CGPointMake(218.19, 116.17) controlPoint1: CGPointMake(172.51, 14.14) controlPoint2: CGPointMake(218.19, 59.82)];
        [bezier2Path closePath];
        bezier2Path.miterLimit = 4;
        
        bezier2Path.lineCapStyle = kCGLineCapRound;
        
        bezier2Path.lineJoinStyle = kCGLineJoinRound;
        
        CGContextSaveGState(context);
        [bezier2Path addClip];
        CGContextDrawLinearGradient(context, linearGradient3167,
                                    CGPointMake(52.92, 37.72),
                                    CGPointMake(177.72, 197.28),
                                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        CGContextRestoreGState(context);
        
        
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(215.16, 116.17)];
        [bezier3Path addLineToPoint: CGPointMake(215.16, 116.17)];
        [bezier3Path addCurveToPoint: CGPointMake(116.17, 215.16) controlPoint1: CGPointMake(215.16, 170.84) controlPoint2: CGPointMake(170.84, 215.16)];
        [bezier3Path addCurveToPoint: CGPointMake(17.17, 116.17) controlPoint1: CGPointMake(61.49, 215.16) controlPoint2: CGPointMake(17.17, 170.84)];
        [bezier3Path addLineToPoint: CGPointMake(17.17, 116.17)];
        [bezier3Path addCurveToPoint: CGPointMake(116.17, 17.17) controlPoint1: CGPointMake(17.17, 61.49) controlPoint2: CGPointMake(61.49, 17.17)];
        [bezier3Path addCurveToPoint: CGPointMake(215.16, 116.17) controlPoint1: CGPointMake(170.84, 17.17) controlPoint2: CGPointMake(215.16, 61.49)];
        [bezier3Path closePath];
        bezier3Path.miterLimit = 4;
        
        bezier3Path.lineCapStyle = kCGLineCapRound;
        
        bezier3Path.lineJoinStyle = kCGLineJoinRound;
        
        CGContextSetFillColorWithColor(ctx, lightColor);
        [bezier3Path fill];
        
        
        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(193.44, 84.85)];
        [bezier4Path addCurveToPoint: CGPointMake(115.16, 131.82) controlPoint1: CGPointMake(187.63, 115.67) controlPoint2: CGPointMake(151.6, 126.78)];
        [bezier4Path addCurveToPoint: CGPointMake(28.09, 97.25) controlPoint1: CGPointMake(78.65, 136.88) controlPoint2: CGPointMake(36.3, 132.7)];
        [bezier4Path addCurveToPoint: CGPointMake(116.17, 17.17) controlPoint1: CGPointMake(19.89, 61.87) controlPoint2: CGPointMake(61.52, 17.17)];
        [bezier4Path addCurveToPoint: CGPointMake(193.44, 84.85) controlPoint1: CGPointMake(170.81, 17.17) controlPoint2: CGPointMake(199.24, 54.13)];
        [bezier4Path closePath];
        bezier4Path.miterLimit = 4;
        
        bezier4Path.lineCapStyle = kCGLineCapRound;
        
        bezier4Path.lineJoinStyle = kCGLineJoinRound;
        
        CGContextSaveGState(context);
        [bezier4Path addClip];
        CGContextSetBlendMode(ctx, kCGBlendModeScreen);
        CGContextDrawLinearGradient(context, linearGradient3206,
                                    CGPointMake(86.87, 23.74),
                                    CGPointMake(110.47, 129.3),
                                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        CGContextRestoreGState(context);
    }
    
    
    //// Cleanup
    CGGradientRelease(linearGradient3167);
    CGGradientRelease(linearGradient3206);
    CGGradientRelease(linearGradient3163);
    CGColorSpaceRelease(colorSpace);
    
    UIGraphicsPopContext();

}

@end
