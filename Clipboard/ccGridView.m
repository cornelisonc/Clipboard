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
float kLabelWidth;
#define spaceBetweenLabels 2.5f
 

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //set background color of the view.
        [self setBackgroundColor:[UIColor redColor]];
        mediumLabelWidth = self.frame.size.width/6;
        NSLog(@"medium width %f ", mediumLabelWidth);
        smallLabelWidth = (mediumLabelWidth / 2) - 2.5;
        largeLabelWidth = (2 * mediumLabelWidth) - 2.5;
        mediumLabelWidth = mediumLabelWidth - 2.5;
        
        _smallLabelImage = [UIImage imageNamed:[NSString stringWithFormat:@"small.png"]];
        _mediumLabelImage = [UIImage imageNamed:[NSString stringWithFormat:@"medium.png"]];
        _largeLabelImagel = [UIImage imageNamed:[NSString stringWithFormat:@"large.png"]];
        
        
        //add view to view heirarchy
        [self addSubview:self.gridView];
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

- (UILabel *)timerLabel
{
    if(!_timerLabel){
        
        kLabelWidth = 0.0f;
        
        CGPoint labelOrigin;
        labelOrigin.x = kLabelWidth;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = mediumLabelWidth;
        labelSize.height = labelHeight;
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _timerLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _timerLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_timerLabel setFrame:labelRect];
        [_timerLabel setText:@"Timer"];
        [_timerLabel setTextColor:[UIColor whiteColor]];
        [_timerLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"smallLabelImage"]]];
        
    }
    
    return _timerLabel;
}

- (UILabel *)locationLabel
{
    if(!_locationLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = self.timerLabel.frame.origin.x + self.timerLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;

        CGSize labelSize;
        labelSize.width = largeLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _locationLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_locationLabel setFrame:labelRect];
        [_locationLabel setText:@"Location"];
        [_locationLabel setTextColor:[UIColor whiteColor]];
        [_locationLabel setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
        [_locationLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"largeLabelImage"]]];
        
    }
    
    return _locationLabel;
}

- (UILabel *)buildingLabel
{
    if(!_buildingLabel){
        
        
        CGPoint labelOrigin;
        labelOrigin.x = self.locationLabel.frame.origin.x + self.locationLabel.frame.size.width + spaceBetweenLabels;
        labelOrigin.y = 0.0f;

        
        CGSize labelSize;
        labelSize.width = largeLabelWidth;
        labelSize.height = labelHeight;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _buildingLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_buildingLabel setFrame:labelRect];
        [_buildingLabel setText:@"Building"];
        [_buildingLabel setTextColor:[UIColor whiteColor]];
        [_buildingLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"largeLabelImage"]]];
        [_buildingLabel setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];

    }
    
    return _buildingLabel;
}

- (UILabel *)typeOfFireLabel
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
        
        _typeOfFireLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_typeOfFireLabel setFrame:labelRect];
        [_typeOfFireLabel setText:@"Building"];
        [_typeOfFireLabel setTextColor:[UIColor whiteColor]];
        [_typeOfFireLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"largeLabelImage"]]];
        [_typeOfFireLabel setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];

    }
    return _typeOfFireLabel;
}

- (UILabel *)commanderLabel
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
        
        _commanderLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_commanderLabel setFrame:labelRect];
        [_commanderLabel setText:@"Commander"];
        [_commanderLabel setTextColor:[UIColor whiteColor]];
        [_commanderLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mediumLabelImage"]]];
        [_commanderLabel setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];

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
        [_commandAideLabel setFrame:labelRect];
        [_commandAideLabel setText:@"Command Aide"];
        [_commandAideLabel setTextColor:[UIColor whiteColor]];
        [_commandAideLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mediumLabelImage"]]];
        [_commandAideLabel setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
    }
    return _commandAideLabel;
}

- (UILabel *)safetyOfficerLabel
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
        
        _safetyOfficerLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_safetyOfficerLabel setFrame:labelRect];
        [_safetyOfficerLabel setText:@"Safety Officer"];
        [_safetyOfficerLabel setTextColor:[UIColor whiteColor]];
        [_safetyOfficerLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mediumLabelImage"]]];
    }
    return _safetyOfficerLabel;
}

- (UILabel *)PIOLabel
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
        
        _PIOLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_PIOLabel setFrame:labelRect];
        [_PIOLabel setText:@"PIO"];
        [_PIOLabel setTextColor:[UIColor whiteColor]];
        [_PIOLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mediumLabelImage"]]];
    }
    return _PIOLabel;
}

- (UILabel *)fireInvestigatorLabel
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
        
        _fireInvestigatorLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_fireInvestigatorLabel setFrame:labelRect];
        [_fireInvestigatorLabel setText:@"Fire Investigator"];
        [_fireInvestigatorLabel setTextColor:[UIColor whiteColor]];
        [_fireInvestigatorLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mediumLabelImage"]]];
    }
    return _fireInvestigatorLabel;
}

- (UILabel *)strategyLabel
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
        
        _strategyLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_strategyLabel setFrame:labelRect];
        [_strategyLabel setText:@"Strategy"];
        [_strategyLabel setTextColor:[UIColor whiteColor]];
        [_strategyLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mediumLabelImage"]]];

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
