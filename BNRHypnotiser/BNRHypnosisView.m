//
//  BNRHypnosisView.m
//  BNRHypnotiser
//
//  Created by Anthony Dagati on 10/16/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGRect bounds = self.bounds;
    
    // FIgure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The circle will be the largest that will fit in the view
    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // Add an arc to the path at center, with radius of radius, from 0 to 2*PI radians (a circle)
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    
    // Draw the line
    [path stroke];
    
}

@end
