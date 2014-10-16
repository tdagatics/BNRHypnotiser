//
//  BNRHypnosisView.m
//  BNRHypnotiser
//
//  Created by Anthony Dagati on 10/16/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGRect bounds = self.bounds;
    
    // FIgure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // Add an arc to the path at center, with radius of radius, from 0 to 2*PI radians (a circle)
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -=20) {
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    path.lineWidth = 10;
    
    // Create an instance of UIColor and set it to lightGrayColor, then set the stroke to this color
    
    [[UIColor lightGrayColor] setStroke];
    
    // Draw the line
    [path stroke];
    
}

@end
