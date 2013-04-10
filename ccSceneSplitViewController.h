//
//  ccSceneSplitViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "ccGridViewController.h"
#import "ccDetailViewController.h"
#import "ccSelectSceneViewController.h"

@class ccGridViewController;

@interface ccSceneSplitViewController : UITableViewController

//@property (nonatomic, strong) ccGridViewController *gridViewController;
//@property (nonatomic, strong) ccSelectSceneViewController * selectSceneViewController;
@property (nonatomic, strong) ccDetailViewController *detailViewController;
@property (nonatomic, strong) ccGridView *gridView;
@property (nonatomic, strong) UIBarButtonItem *selectSceneButton;
@property (nonatomic, strong) UISegmentedControl *segControl;



@end