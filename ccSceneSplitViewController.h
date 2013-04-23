//
//  ccSceneSplitViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccGridView.h"
#import "ccDetailViewController.h"
#import "ccSelectSceneViewController.h"

@class ccGridView;

@interface ccSceneSplitViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ccDetailViewController *detailViewController;
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) UIBarButtonItem *selectSceneButton;
@property (nonatomic, strong) UISegmentedControl *segmentedControl;
@property (nonatomic, strong) IBOutlet UISwitch *onoff;
- (IBAction)flip:(id)sender;



@end