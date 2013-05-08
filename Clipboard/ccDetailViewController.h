//
//  ccDetailViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/9/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccGridView.h"
#import "ccFireInstance.h"
#import "ccSelectSceneViewController.h"


@interface ccDetailViewController : UIViewController<UISplitViewControllerDelegate>

@property (nonatomic, strong) UISwitch *onoff;
- (void)flip:(id)sender;
@property (nonatomic, strong) ccSelectSceneViewController *selectSceneViewController;
@property (nonatomic, strong) id detailItem;
@property (nonatomic, strong) UILabel *detailDescriptionLabel;
@property (nonatomic, strong) ccGridView *wholeGridView;
@property (nonatomic, strong) ccFireInstance *fireInstance;
@property (nonatomic, strong) UIView *gridView;
@property (nonatomic, strong) UILabel *timerLabel;
@property (nonatomic, strong) UILabel *locationLabel;
@property (nonatomic, strong) UILabel *buildingLabel;
@property (nonatomic, strong) UILabel *typeOfFireLabel;
@property (nonatomic, strong) UILabel *commanderLabel;
@property (nonatomic, strong) UILabel *commandAideLabel;
@property (nonatomic, strong) UILabel *safetyOfficerLabel;
@property (nonatomic, strong) UILabel *PIOLabel;
@property (nonatomic, strong) UILabel *fireInvestigatorLabel;
@property (nonatomic, strong) UILabel *strategyLabel;
 
@end

