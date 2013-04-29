//
//  ccSelectSceneCell.m
//  Clipboard
//
//  Created by William Cleeton on 4/1/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccSelectSceneCell.h"

@implementation ccSelectSceneCell

- (void)layoutSubviews
{
	[super layoutSubviews];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        // Initialization code
        [self.contentView addSubview:self.incidentLabel];
        [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.locationLabel];
        [self.contentView addSubview:self.buildingLabel];
        [self.contentView addSubview:self.typeLabel];
        [self.contentView addSubview:self.apparatusLabel];
        
        
        
        
    }
    return self;
}

- (UILabel *)incidentLabel
{
    if(!_incidentLabel) {
        _incidentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 50.0f, 44.0f)];
		[_incidentLabel setBackgroundColor: [UIColor whiteColor]];
		[_incidentLabel setTextColor:[UIColor blackColor]];
        [_incidentLabel setFont:[UIFont fontWithName:@"ArialMT" size:10]];
    }
    
    return _incidentLabel;
}

- (UILabel *)timeLabel
{
    if(!_timeLabel) {
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 0.0f, 50, 44.0f)];
		[_timeLabel setBackgroundColor: [UIColor whiteColor]];
		[_timeLabel setTextColor:[UIColor blackColor]];
        [_timeLabel setFont:[UIFont fontWithName:@"ArialMT" size:10]];
    }
    
    return _timeLabel;
}

- (UILabel *)locationLabel
{
	if (!_locationLabel) {
		_locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 0.0f, 200.0f, 44.0f)];
		[_locationLabel setBackgroundColor: [UIColor whiteColor]];
		[_locationLabel setTextColor:[UIColor blackColor]];
        [_locationLabel setFont:[UIFont fontWithName:@"ArialMT" size:10]];
	}
	return _locationLabel;
    
}

- (UILabel *)buildingLabel
{
    if(!_buildingLabel) {
        _buildingLabel = [[UILabel alloc] initWithFrame:CGRectMake(300.0f, 0.0f, 200.0f, 44.0f)];
		[_buildingLabel setBackgroundColor: [UIColor whiteColor]];
		[_buildingLabel setTextColor:[UIColor blackColor]];
        [_buildingLabel setFont:[UIFont fontWithName:@"ArialMT" size:10]];
    }
    
    return _buildingLabel;
}



- (UILabel *)typeLabel
{
    if(!_typeLabel) {
        _typeLabel = [[UILabel alloc] initWithFrame:CGRectMake(500.0f, 0.0f, 200.0f, 44.0f)];
		[_typeLabel setBackgroundColor: [UIColor whiteColor]];
		[_typeLabel setTextColor:[UIColor blackColor]];
        [_typeLabel setFont:[UIFont fontWithName:@"ArialMT" size:10]];
    }
    
    return _typeLabel;
}

- (UILabel *)apparatusLabel
{
    if(!_apparatusLabel) {
        _apparatusLabel = [[UILabel alloc] initWithFrame:CGRectMake(700.0f, 0.0f, 200.0f, 44.0f)];
		[_apparatusLabel setBackgroundColor: [UIColor whiteColor]];
		[_apparatusLabel setTextColor:[UIColor blackColor]];
        [_apparatusLabel setFont:[UIFont fontWithName:@"ArialMT" size:10]];
        

    }
    
    return _apparatusLabel;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
   
    if (selected) {
		[UIView animateWithDuration:0.3f animations:^{
            [self.locationLabel setAlpha:0.5f];
		}];
		
	} else {
		[UIView animateWithDuration:0.3f animations:^{
			[self.locationLabel setAlpha:0.5f];
		}];
	}

    // Configure the view for the selected state
    

}

@end
