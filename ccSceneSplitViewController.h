//
//  ccSceneSplitViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccGridViewController.h"
#import "ccSelectSceneViewController.h"


@interface ccSceneSplitViewController : UISplitViewController

@property (nonatomic, strong) ccGridViewController *gridViewController;


@end
