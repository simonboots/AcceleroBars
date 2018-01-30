//
//  AcceleroBarsViewController.h
//  AcceleroBars
//
//  Created by Simon Stiefel on 5/31/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AcceleroBarsView.h"
#import "AcceleroMeter.h"
#import "AccelerometerFilter.h"

@interface AcceleroBarsViewController : UIViewController <UIAccelerometerDelegate> {
    IBOutlet UILabel *deltaXLabel;
    IBOutlet AcceleroBarsView *acceleroBarView;
    AcceleroMeter *acceleroMeter;
    AccelerometerFilter *filter;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;


@end

