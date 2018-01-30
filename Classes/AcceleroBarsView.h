//
//  AcceleroBarsView.h
//  AcceleroBars
//
//  Created by Simon Stiefel on 5/31/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AcceleroBarsView : UIView {
    UIAccelerationValue x;
}

@property (nonatomic, assign) UIAccelerationValue x;

@end
