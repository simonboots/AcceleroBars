//
//  AcceleroMeter.m
//  AcceleroBars
//
//  Created by Simon Stiefel on 6/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AcceleroMeter.h"

@implementation AcceleroMeter

- (id) init
{
    self = [super init];
    if (self != nil) {
        accelerometer = [UIAccelerometer sharedAccelerometer];
    }
    
    return self;
}

- (void)startWithDelegate:(id<UIAccelerometerDelegate>)delegate withUpdateInterval:(NSTimeInterval)interval
{
    accelerometer.delegate = delegate;
    accelerometer.updateInterval = interval;
}

@end
