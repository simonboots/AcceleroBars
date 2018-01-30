//
//  AcceleroBarsViewController.m
//  AcceleroBars
//
//  Created by Simon Stiefel on 5/31/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "AcceleroBarsViewController.h"

@implementation AcceleroBarsViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    filter = [[LowpassFilter alloc] initWithSampleRate:50 cutoffFrequency:2.0];
    acceleroMeter = [[AcceleroMeter alloc] init];
    [acceleroMeter startWithDelegate:self withUpdateInterval:0.02];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    [filter addAcceleration:acceleration];
    
    deltaXLabel.text = [NSString stringWithFormat:@"%f", filter.y];
    acceleroBarView.x = filter.y;
}

- (void)dealloc {
    [super dealloc];
}

@end
