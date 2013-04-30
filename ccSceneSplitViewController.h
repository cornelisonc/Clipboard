//
//  ccSceneSplitViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ccDetailViewController;
@class ccSelectSceneViewController;

@interface ccSceneSplitViewController : UITableViewController

@property (nonatomic, strong) ccDetailViewController *detailViewController;
@property (nonatomic, strong) ccSelectSceneViewController *selectSceneViewController;
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) UIBarButtonItem *selectSceneButton;
@property (nonatomic, strong) UISegmentedControl *segmentedControl;




@end