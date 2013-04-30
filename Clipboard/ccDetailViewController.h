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
@property (nonatomic, strong) UIButton *timerLabel;
@property (nonatomic, strong) UIButton *locationLabel;
@property (nonatomic, strong) UIButton *buildingLabel;
@property (nonatomic, strong) UIButton *typeOfFireLabel;
@property (nonatomic, strong) UIButton *commanderLabel;
@property (nonatomic, strong) UIButton *commandAideLabel;
@property (nonatomic, strong) UIButton *safetyOfficerLabel;
@property (nonatomic, strong) UIButton *PIOLabel;
@property (nonatomic, strong) UIButton *fireInvestigatorLabel;
@property (nonatomic, strong) UIButton *strategyLabel;
 
@end

