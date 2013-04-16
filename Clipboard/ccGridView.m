//
//  ccGridView.m
//  Clipboard
//
//  Created by William Cleeton on 4/4/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccGridView.h"

@implementation ccGridView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addSubview:self.gridView];
        [self addSubview:self.timeLabel];
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
        _gridView = [[UIView alloc] init];
        
        [_gridView setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        
        [_gridView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin];
        
        [_gridView setBackgroundColor:[UIColor blueColor]];
        
    }
    
    return _gridView;
    
}

- (UIImage *)gridViewGrid
{
    
    if(!_gridViewGrid){
        
        
       // _gridViewGrid = [UIImage imageNamed:@"gridViewGrid.psd"];
    
        
    }
    
    
    return _gridViewGrid;
}

- (UILabel *)timeLabel
{

    if(!_timeLabel){

        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 60.0f, 44.0f)];
		[_timeLabel setBackgroundColor: [UIColor whiteColor]];
		[_timeLabel setTextColor:[UIColor redColor]];
        [_timeLabel setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin];

    }
    [_timeLabel setText:@"Time"];
    
    return _timeLabel;
}

@end
