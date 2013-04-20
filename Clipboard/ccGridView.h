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
@property (nonatomic, strong) UILabel *timeLabel;
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
