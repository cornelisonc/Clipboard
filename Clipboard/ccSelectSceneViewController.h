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
//#import "ccFireInstance.h"
#import "ccInstanceProvider.h"
#import "ccDetailViewController.h"
#import "ccFireFighterProvider.h"


@interface ccSelectSceneViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ccSelectSceneView *selectSceneView;
@property (nonatomic, strong) UITableView *selectSceneTableView;
@property (nonatomic, strong) id owner;
@property (nonatomic, strong) UIImageView *logoImageView;
@property (nonatomic, strong) NSMutableArray *fireInstance;


@end
