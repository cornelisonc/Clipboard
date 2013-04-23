//
//  ccGridView.h
//  Clipboard
//
//  Created by William Cleeton on 4/4/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ccGridView : UIView

@property (nonatomic, strong) id owner;
@property (nonatomic, strong) UIView *gridView;
@property (nonatomic, strong) UIButton *timeLabel;
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
