//
//  AcceleroMeter.h
//  AcceleroBars
//
//  Created by Simon Stiefel on 6/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AcceleroMeter : NSObject {
    UIAccelerometer *accelerometer;
}

- (void)startWithDelegate:(id<UIAccelerometerDelegate>)delegate withUpdateInterval:(NSTimeInterval)interval;

@end
