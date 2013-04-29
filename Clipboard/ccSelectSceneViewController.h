//
//  ccSelectSceneViewController.h
//  Clipboard
//
//  Created by Ceili Cornelison on 3/12/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccSelectSceneCell.h"
#import "ccSelectSceneView.h"
#import "ccSceneSplitViewController.h"
#import "ccFireInstance.h"
#import "ccInstanceProvider.h"
#import "ccDetailViewController.h"


@interface ccSelectSceneViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ccSelectSceneView *selectSceneView;
//@property (nonatomic, strong) ccDetailViewController *detailViewController;
@property (nonatomic, strong) UITableView *selectSceneTableView;
@property (nonatomic, strong) UIImageView *logoImageView;
@property (nonatomic, strong) UILabel * headerLabel;
@property (nonatomic, strong) id owner;
@property (nonatomic, strong) NSMutableArray *fireInstance;


@end
