//
//  ccGridView.m
//  Clipboard
//
//  Created by William Cleeton on 4/4/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccGridView.h"

@implementation ccGridView

- (void)layoutSubviews
{
	[super layoutSubviews];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
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
        
        _gridView =  [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Building.png"]];
    }
    
    [_gridView setFrame:CGRectMake(0.0f, 0.0f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        
    [_gridView setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
    [_gridView setBackgroundColor:[UIColor blueColor]];
    [self setClipsToBounds:YES];
    
    return _gridView;
    
}

- (UILabel *)timeLabel
{

    if(!_timeLabel){

        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 114.5f, 74.0f)];
		[_timeLabel setBackgroundColor: [UIColor whiteColor]];
		[_timeLabel setTextColor:[UIColor redColor]];
        [_timeLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];

    }
    [_timeLabel setText:@"Time:"];
    
    return _timeLabel;
}

- (UILabel *)timerLabel
{
    if(!_timerLabel){
        
        _timerLabel = [[UILabel alloc] initWithFrame:CGRectMake(114.5f, 0.0f, 114.5f, 74.0f)];
		[_timerLabel setBackgroundColor: [UIColor whiteColor]];
		[_timerLabel setTextColor:[UIColor redColor]];
        [_timerLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_timerLabel setText:@"Timer"];
    
    return _timerLabel;
}

- (UILabel *)locationLabel
{
    if(!_locationLabel){
        
        _locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(229.0f, 0.0f, 475.0f, 74.0f)];
		[_locationLabel setBackgroundColor: [UIColor whiteColor]];
		[_locationLabel setTextColor:[UIColor redColor]];
        [_locationLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_locationLabel setText:@"Location"];
    
    return _locationLabel;
}

- (UILabel *)buildingLabel
{
    if(!_buildingLabel){
        
        _buildingLabel = [[UILabel alloc] initWithFrame:CGRectMake(704.0f, 0.0f, 475.0f, 74.0f)];
		[_buildingLabel setBackgroundColor: [UIColor whiteColor]];
		[_buildingLabel setTextColor:[UIColor redColor]];
        [_buildingLabel setAutoresizingMask: UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_buildingLabel setText:@"Building"];
    
    return _buildingLabel;
}

- (UILabel *)typeOfFireLabel
{
    if(!_typeOfFireLabel){
        
        _typeOfFireLabel = [[UILabel alloc] initWithFrame:CGRectMake(1179.0f, 0.0f, 232.5f, 74.0f)];
		[_typeOfFireLabel setBackgroundColor: [UIColor whiteColor]];
		[_typeOfFireLabel setTextColor:[UIColor redColor]];
        [_typeOfFireLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_typeOfFireLabel setText:@"TypeOfFire"];
    
    return _typeOfFireLabel;
}

- (UILabel *)commanderLabel
{
    if(!_commanderLabel){
        
        _commanderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 74.0f, 232.5f, 74.0f)];
		[_commanderLabel setBackgroundColor: [UIColor whiteColor]];
		[_commanderLabel setTextColor:[UIColor redColor]];
        [_commanderLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_commanderLabel setText:@"Commander"];
    
    return _commanderLabel;
}

- (UILabel *)commandAideLabel{
    if(!_commandAideLabel){
        
        _commandAideLabel = [[UILabel alloc] initWithFrame:CGRectMake(232.5f, 74.0f, 232.5f, 74.0f)];
		[_commandAideLabel setBackgroundColor: [UIColor whiteColor]];
		[_commandAideLabel setTextColor:[UIColor redColor]];
        [_commandAideLabel setAutoresizingMask: UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_commandAideLabel setText:@"CommandAide"];
    
    return _commandAideLabel;
}

- (UILabel *)safetyOfficerLabel 
{
    if(!_safetyOfficerLabel){
        
        _safetyOfficerLabel = [[UILabel alloc] initWithFrame:CGRectMake(465.0f, 74.0f, 232.5f, 74.0f)];
		[_safetyOfficerLabel setBackgroundColor: [UIColor whiteColor]];
		[_safetyOfficerLabel setTextColor:[UIColor redColor]];
        [_safetyOfficerLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_safetyOfficerLabel setText:@"SafetyOfficer"];
    
    return _safetyOfficerLabel;
}

- (UILabel *)PIOLabel
{
    if(!_PIOLabel){
        
        _PIOLabel = [[UILabel alloc] initWithFrame:CGRectMake(697.5f, 74.0f, 232.5f, 74.0f)];
		[_PIOLabel setBackgroundColor: [UIColor whiteColor]];
		[_PIOLabel setTextColor:[UIColor redColor]];
        [_PIOLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_PIOLabel setText:@"PIO"];
    
    return _PIOLabel;
}

- (UILabel *)fireInvestigatorLabel
{
    if(!_fireInvestigatorLabel){
        
        _fireInvestigatorLabel = [[UILabel alloc] initWithFrame:CGRectMake(930.0f, 74.0f, 232.5f, 74.0f)];
		[_fireInvestigatorLabel setBackgroundColor: [UIColor whiteColor]];
		[_fireInvestigatorLabel setTextColor:[UIColor redColor]];
        [_fireInvestigatorLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_fireInvestigatorLabel setText:@"FireInvestigator"];
    
    return _fireInvestigatorLabel;
}

- (UILabel *)strategyLabel
{
    if(!_strategyLabel){
        
        _strategyLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 74.0f, 232.5f, 74.0f)];
		[_strategyLabel setBackgroundColor: [UIColor whiteColor]];
		[_strategyLabel setTextColor:[UIColor blackColor]];
        [_strategyLabel setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        
    }
    [_strategyLabel setText:@"Strategy"];
    
    return _strategyLabel;
}



@end
