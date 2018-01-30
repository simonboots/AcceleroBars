//
//  AcceleroBarsAppDelegate.h
//  AcceleroBars
//
//  Created by Simon Stiefel on 5/31/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AcceleroBarsViewController;

@interface AcceleroBarsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AcceleroBarsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AcceleroBarsViewController *viewController;

@end

