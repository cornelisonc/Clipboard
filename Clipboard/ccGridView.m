//
//  ccGridView.m
//  Clipboard
//
//  Created by William Cleeton on 4/4/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccGridView.h"

@interface ccGridView ()

@property (nonatomic, strong) UIImage *smallLabelImage;
@property (nonatomic, strong) UIImage *mediumLabelImage;
@property (nonatomic, strong) UIImage *largeLabelImagel;

@end

@implementation ccGridView

float labelHeight = 44.0f;
float smallLabelWidth = 0.0f;
float mediumLabelWidth = 0.0f;
float largeLabelWidth = 0.0f;
#define spaceBetweenLabels 2.5f

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //set background color of the view.
        [self setBackgroundColor:[UIColor grayColor]];
        mediumLabelWidth = self.frame.size.width/6;
        smallLabelWidth = (mediumLabelWidth / 2) - 2.5;
        largeLabelWidth = (2 * mediumLabelWidth) - 2.5;
        mediumLabelWidth = mediumLabelWidth - 2.5;
        
        _smallLabelImage = [UIImage imageNamed:[NSString stringWithFormat:@"small.png"]];
        _mediumLabelImage = [UIImage imageNamed:[NSString stringWithFormat:@"medium.png"]];
        _largeLabelImagel = [UIImage imageNamed:[NSString stringWithFormat:@"large.png"]];
        
        NSLog(@"mediumLabelWidth %f", smallLabelWidth);
        NSLog(@"largeLabelWidth %f", largeLabelWidth);

        
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
        [_gridView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
        [_gridView setBackgroundColor:[UIColor whiteColor]];
        
        [self setClipsToBounds:YES];
    }
    
    return _gridView;
    
}


- (UIButton *)timeLabel
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
        
        _timeLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_timeLabel setFrame:labelRect];
        [_timeLabel setTitle:@"Time" forState:UIControlStateNormal];
        [_timeLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_timeLabel setBackgroundImage:_smallLabelImage    forState:UIControlStateNormal];

    }
    
    return _timeLabel;
}

- (UIButton *)timerLabel
{
    if(!_timerLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timeLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;
        NSLog(@"timerlabelOrigin %f", labelOrigin.x);
        
        CGSize labelSize;
        labelSize.width = smallLabelWidth;
        labelSize.height = labelHeight;
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _timerLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_timerLabel setFrame:labelRect];
        [_timerLabel setTitle:@"Timer" forState:UIControlStateNormal];
        [_timerLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_timerLabel setBackgroundImage:_smallLabelImage    forState:UIControlStateNormal];
        
    }
    
    return _timerLabel;
}

- (UIButton *)locationLabel
{
    if(!_locationLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timerLabel.frame.origin.x + self.timerLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;
        NSLog(@"locationlabelOrigin %f", labelOrigin.x);

        CGSize labelSize;
        labelSize.width = largeLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _locationLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_locationLabel setFrame:labelRect];
        [_locationLabel setTitle:@"Location" forState:UIControlStateNormal];
        [_locationLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_locationLabel setBackgroundImage:_largeLabelImagel      forState:UIControlStateNormal];
        
    }
    
    return _locationLabel;
}

- (UIButton *)buildingLabel
{
    if(!_buildingLabel){
        
        
        CGPoint labelOrigin;
        labelOrigin.x = self.locationLabel.frame.origin.x + self.locationLabel.frame.size.width + spaceBetweenLabels;
        NSLog(@"spaceBetweenLabels %f", spaceBetweenLabels);
        labelOrigin.y = 0.0f;
        NSLog(@"buildinglabelOrigin %f", labelOrigin.x);

        
        CGSize labelSize;
        labelSize.width = largeLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _buildingLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_buildingLabel setFrame:labelRect];
        [_buildingLabel setTitle:@"Building" forState:UIControlStateNormal];
        [_buildingLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_buildingLabel setBackgroundImage:_largeLabelImagel      forState:UIControlStateNormal];
        
    }
    
    return _buildingLabel;
}

- (UIButton *)typeOfFireLabel
{
    if(!_typeOfFireLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.buildingLabel.frame.origin.x + self.buildingLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _typeOfFireLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_typeOfFireLabel setFrame:labelRect];
        [_typeOfFireLabel setTitle:@"Type Of Fire" forState:UIControlStateNormal];
        [_typeOfFireLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_typeOfFireLabel setBackgroundImage:_largeLabelImagel      forState:UIControlStateNormal];
    }
    return _typeOfFireLabel;
}

- (UIButton *)commanderLabel
{
    if(!_commanderLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = 0;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _commanderLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_commanderLabel setFrame:labelRect];
        [_commanderLabel setTitle:@"Commander" forState:UIControlStateNormal];
        [_commanderLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_commanderLabel setBackgroundImage:_mediumLabelImage      forState:UIControlStateNormal];
    }
    return _commanderLabel;
}

- (UIButton *)commandAideLabel{
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
        
        _commandAideLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_commandAideLabel setFrame:labelRect];
        [_commandAideLabel setTitle:@"Command Aide" forState:UIControlStateNormal];
        [_commandAideLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_commandAideLabel setBackgroundImage:_mediumLabelImage      forState:UIControlStateNormal];
    }
    return _commandAideLabel;
}

- (UIButton *)safetyOfficerLabel
{
    if(!_safetyOfficerLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.commandAideLabel.frame.origin.x + self.commandAideLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _safetyOfficerLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_safetyOfficerLabel setFrame:labelRect];
        [_safetyOfficerLabel setTitle:@"Safety Officer" forState:UIControlStateNormal];
        [_safetyOfficerLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_safetyOfficerLabel setBackgroundImage:_mediumLabelImage      forState:UIControlStateNormal];
    }
    return _safetyOfficerLabel;
}

- (UIButton *)PIOLabel
{
    if(!_PIOLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.safetyOfficerLabel.frame.origin.x + self.safetyOfficerLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _PIOLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_PIOLabel setFrame:labelRect];
        [_PIOLabel setTitle:@"PIO" forState:UIControlStateNormal];
        [_PIOLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PIOLabel setBackgroundImage:_mediumLabelImage      forState:UIControlStateNormal];
    }
    return _PIOLabel;
}

- (UIButton *)fireInvestigatorLabel
{
    if(!_fireInvestigatorLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.PIOLabel.frame.origin.x + self.PIOLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _fireInvestigatorLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_fireInvestigatorLabel setFrame:labelRect];
        [_fireInvestigatorLabel setTitle:@"Fire Investigator" forState:UIControlStateNormal];
        [_fireInvestigatorLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_fireInvestigatorLabel setBackgroundImage:_mediumLabelImage      forState:UIControlStateNormal];
    }
    return _fireInvestigatorLabel;
}

- (UIButton *)strategyLabel
{
    if(!_strategyLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.fireInvestigatorLabel.frame.origin.x + self.fireInvestigatorLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = labelHeight;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _strategyLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_strategyLabel setFrame:labelRect];
        [_strategyLabel setTitle:@"Stragtegy" forState:UIControlStateNormal];
        [_strategyLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_strategyLabel setBackgroundImage:_mediumLabelImage      forState:UIControlStateNormal];

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
