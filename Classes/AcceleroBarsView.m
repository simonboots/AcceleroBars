//
//  AcceleroBarsView.m
//  AcceleroBars
//
//  Created by Simon Stiefel on 5/31/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AcceleroBarsView.h"
#define MAX_VALUE 10
#define WIDTH 30
#define HEIGHT 200

@implementation AcceleroBarsView

@synthesize x;


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.x = 0.0;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {    
    CGRect bounds = [self bounds];
    
    [[UIColor blackColor] set];
    UIRectFill(bounds);
    
    // x bar
    [[UIColor redColor] set];
    CGRect xRect = CGRectMake(3, 5 + (HEIGHT/2 - self.x * 100) , 24, self.x * 100);
    UIRectFill(xRect);
}

- (void)setX:(UIAccelerationValue)_x {
    x = _x;
    [self setNeedsDisplay];
}

- (void)dealloc {
    [super dealloc];
}


@end
