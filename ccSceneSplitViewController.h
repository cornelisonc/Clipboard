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

@interface ccSceneSplitViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ccDetailViewController *detailViewController;
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) UIBarButtonItem *selectSceneButton;
@property (nonatomic, strong) UISegmentedControl *segmentedControl;


@end