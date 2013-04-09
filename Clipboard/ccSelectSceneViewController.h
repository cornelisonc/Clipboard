//
//  ccSelectSceneViewController.h
//  Clipboard
//
//  Created by Ceili Cornelison on 3/12/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccSelectSceneCell.h"
#import "ccSceneSplitViewController.h"

@interface ccSelectSceneViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ccSelectSceneViewController *selectSceneViewController;
@property (nonatomic, strong) UITableView *selectSceneTableView;
@property (nonatomic, strong) UIImageView *logoImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) id owner;

@end
