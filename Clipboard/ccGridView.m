//
//  ccGridView.m
//  Clipboard
//
//  Created by William Cleeton on 4/4/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccGridView.h"

@implementation ccGridView

float labelHeight = 74.0f;
float smallLabelWidth = 0.0f;
float mediumLabelWidth = 0.0f;
float largeLabelWidth = 0.0f;
float spaceBetweenLabels = 2.5f;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //set background color of the view.
        [self setBackgroundColor:[UIColor whiteColor]];
        mediumLabelWidth = self.frame.size.width / 6 - 5;
        smallLabelWidth = mediumLabelWidth / 2 - 5;
        largeLabelWidth = 2 * mediumLabelWidth - 5;
        
        NSLog(@"mediumLabelWidth %f", mediumLabelWidth);
        
        //add view to view heirarchy
        [self addSubview:self.gridView];
        [self addSubview:self.timeLabel];
        [self addSubview:self.timerLabel];
        [self addSubview:self.locationLabel];
        [self addSubview:self.buildingLabel];
        [self addSubview:self.typeOfFireLabel];
        [self addSubview:self.commanderLabel];
        [self addSubview:self.commandAideLabel];
        [self addSubview:self.safetyOfficerLabel];
        [self addSubview:self.PIOLabel];
        [self addSubview:self.fireInvestigatorLabel];
        [self addSubview:self.strategyLabel];
        [self setClipsToBounds:YES];
        
    }
    return self;
}

- (void)layoutSubviews
{
	[super layoutSubviews];
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

- (UIView *)gridView
{
    if(!_gridView){
        
        
        CGPoint gridViewOrigin;
        gridViewOrigin.x = 0.0f;
        gridViewOrigin.y = 2 * labelHeight;
        
        CGSize gridViewSize;
        gridViewSize.width = self.frame.size.width;
        gridViewSize.height = self.frame.size.height - gridViewOrigin.y;
        
        CGRect gridViewRect;
        gridViewRect.origin = gridViewOrigin;
        gridViewRect.size = gridViewSize;
        
        _gridView =  [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background-app.png"]];
        [_gridView setFrame:gridViewRect];
        [_gridView setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_gridView setBackgroundColor:[UIColor whiteColor]];
        
        [self setClipsToBounds:YES];
    }
    
    return _gridView;
    
}


- (UILabel *)timeLabel
{
    
    if(!_timeLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = 0.0f;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = smallLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _timeLabel = [[UILabel alloc] initWithFrame:labelRect];
        
		[_timeLabel setBackgroundColor: [UIColor grayColor]];
		[_timeLabel setTextColor:[UIColor whiteColor]];
        [_timeLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_timeLabel setTextAlignment:NSTextAlignmentCenter];
        
        [_timeLabel setText:@"Time:"];
    }
    
    return _timeLabel;
}

- (UILabel *)timerLabel
{
    if(!_timerLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timeLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;;
        
        CGSize labelSize;
        labelSize.width = smallLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _timerLabel = [[UILabel alloc] initWithFrame:labelRect];
        
		[_timerLabel setBackgroundColor: [UIColor grayColor]];
		[_timerLabel setTextColor:[UIColor whiteColor]];
        [_timerLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_timerLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        [_timerLabel setText:@"Timer"];
        
    }
    
    return _timerLabel;
}

- (UILabel *)locationLabel
{
    if(!_locationLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timeLabel.frame.size.width + self.timerLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = largeLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _locationLabel = [[UILabel alloc] initWithFrame:labelRect];
        
		[_locationLabel setBackgroundColor: [UIColor grayColor]];
		[_locationLabel setTextColor:[UIColor blueColor]];
        [_locationLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_locationLabel setText:@"Location"];
        [_locationLabel setTextAlignment:NSTextAlignmentCenter];
        
        
    }
    
    return _locationLabel;
}

- (UILabel *)buildingLabel
{
    if(!_buildingLabel){
        
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timeLabel.frame.size.width + self.timerLabel.frame.size.width + self.locationLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = largeLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _buildingLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_buildingLabel setBackgroundColor: [UIColor grayColor]];
		[_buildingLabel setTextColor:[UIColor whiteColor]];
        [_buildingLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_buildingLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        [_buildingLabel setText:@"Building"];
        
    }
    
    return _buildingLabel;
}

- (UILabel *)typeOfFireLabel
{
    if(!_typeOfFireLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timeLabel.frame.size.width + self.timerLabel.frame.size.width + self.locationLabel.frame.size.width + self.buildingLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _typeOfFireLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_typeOfFireLabel setBackgroundColor: [UIColor blackColor]];
		[_typeOfFireLabel setTextColor:[UIColor whiteColor]];
        [_typeOfFireLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_typeOfFireLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        [_typeOfFireLabel setText:@"TypeOfFire"];
    }
    return _typeOfFireLabel;
}

- (UILabel *)commanderLabel
{
    if(!_commanderLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _commanderLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_commanderLabel setBackgroundColor: [UIColor grayColor]];
		[_commanderLabel setTextColor:[UIColor whiteColor]];
        [_commanderLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_commanderLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        [_commanderLabel setText:@"Commander"];
    }
    return _commanderLabel;
}

- (UILabel *)commandAideLabel{
    if(!_commandAideLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.commanderLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _commandAideLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_commandAideLabel setBackgroundColor: [UIColor grayColor]];
		[_commandAideLabel setTextColor:[UIColor whiteColor]];
        [_commandAideLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_commandAideLabel setTextAlignment:NSTextAlignmentCenter];
        
    }
    [_commandAideLabel setText:@"CommandAide"];
    
    return _commandAideLabel;
}

- (UILabel *)safetyOfficerLabel
{
    if(!_safetyOfficerLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.commanderLabel.frame.size.width + self.commandAideLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _safetyOfficerLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_safetyOfficerLabel setBackgroundColor: [UIColor grayColor]];
		[_safetyOfficerLabel setTextColor:[UIColor whiteColor]];
        [_safetyOfficerLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_safetyOfficerLabel  setTextAlignment:NSTextAlignmentCenter];
        
        
        [_safetyOfficerLabel setText:@"SafetyOfficer"];
    }
    return _safetyOfficerLabel;
}

- (UILabel *)PIOLabel
{
    if(!_PIOLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.commanderLabel.frame.size.width + self.commandAideLabel.frame.size.width + self.safetyOfficerLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _PIOLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_PIOLabel setBackgroundColor: [UIColor grayColor]];
		[_PIOLabel setTextColor:[UIColor whiteColor]];
        [_PIOLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_PIOLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        [_PIOLabel setText:@"PIO"];
    }
    return _PIOLabel;
}

- (UILabel *)fireInvestigatorLabel
{
    if(!_fireInvestigatorLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.commanderLabel.frame.size.width + self.commandAideLabel.frame.size.width + self.safetyOfficerLabel.frame.size.width + self.PIOLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = self.timeLabel.frame.size.height;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _fireInvestigatorLabel = [[UILabel alloc] initWithFrame:labelRect];
		[_fireInvestigatorLabel setBackgroundColor: [UIColor grayColor]];
		[_fireInvestigatorLabel setTextColor:[UIColor whiteColor]];
        [_fireInvestigatorLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_fireInvestigatorLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        [_fireInvestigatorLabel setText:@"FireInvestigator"];
    }
    return _fireInvestigatorLabel;
}

- (UILabel *)strategyLabel
{
    if(!_strategyLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.commanderLabel.frame.size.width + self.commandAideLabel.frame.size.width + self.safetyOfficerLabel.frame.size.width + self.PIOLabel.frame.size.width + self.fireInvestigatorLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = self.timeLabel.frame.size.height;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _strategyLabel = [[UILabel alloc] initWithFrame:labelRect];
        
		[_strategyLabel setBackgroundColor: [UIColor grayColor]];
		[_strategyLabel setTextColor:[UIColor whiteColor]];
        [_strategyLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [_strategyLabel setText:@"Strategy"];
        [_strategyLabel setTextAlignment:NSTextAlignmentCenter];
        
    }
    return _strategyLabel;
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
