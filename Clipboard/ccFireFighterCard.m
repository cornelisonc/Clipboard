//
//  ccFireFighterCard.m
//  Clipboard
//
//  Created by William Cleeton on 5/7/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccFireFighterCard.h"

@implementation ccFireFighterCard

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setFrame:CGRectMake(0, 0, 300.0f, 100.0f)];
        
        [self setBackgroundColor:[UIColor redColor]];
        
        [self addSubview:self.photo];
        [self addSubview:self.crewLabel];
        [self addSubview:self.taskLabel];
        [self addSubview:self.numberOfPeopleLabel];
        
        [self setClipsToBounds:YES];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

- (UIImageView *)photo
{
    if(!_photo){
        
        CGPoint labelOrigin;
        labelOrigin.x = 10.0f;
        labelOrigin.y = 0.0f;
        
        CGSize labelSize;
        labelSize.width = 100.0f;
        labelSize.height = 100.0f;
        
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _photo = [[UIImageView alloc] initWithFrame:labelRect];
        UIImage *personnelPhoto = [UIImage imageNamed:@"photo.png"];

        [_photo setImage:personnelPhoto];
        
    }
    return _photo;
}

- (UILabel *)crewLabel
{
    if(!_crewLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = 100.0f;
        labelOrigin.y = 44.0f;
        
        CGSize labelSize;
        labelSize.width = 100.0f;
        labelSize.height = 44.0f;
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _crewLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_crewLabel setFrame:labelRect];
        [_crewLabel setText:@"CREW: "];


        
    }
    return _crewLabel;
}

- (UILabel *)taskLabel
{
    if(!_taskLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = 100.0f;
        labelOrigin.y = 88.0f;
        
        CGSize labelSize;
        labelSize.width = 100.0f;
        labelSize.height = 44.0f;
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _taskLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_taskLabel setFrame:labelRect];
        [_taskLabel setText:@"TASK: "];
        
        
        
    }
    return _taskLabel;
    
}

- (UILabel *)numberOfPeopleLabel
{
    if(!_numberOfPeopleLabel){
        
        CGPoint labelOrigin;
        labelOrigin.x = 100.0f;
        labelOrigin.y = 132.0f;
        
        CGSize labelSize;
        labelSize.width = 100.0f;
        labelSize.height = 44.0f;
        CGRect labelRect;
        labelRect.origin = labelOrigin;
        labelRect.size = labelSize;
        
        _numberOfPeopleLabel = [[UILabel alloc] initWithFrame:labelRect];
        [_numberOfPeopleLabel setFrame:labelRect];
        [_numberOfPeopleLabel setText:@"1 Person"];
        
        
    }
    return _numberOfPeopleLabel;
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
