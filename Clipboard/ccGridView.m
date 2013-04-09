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
        
        [_gridView setFrame:CGRectMake(160, 0, 320, [UIScreen mainScreen].bounds.size.height)];
        
        [_gridView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
        
        [_gridView setBackgroundColor:[UIColor blueColor]];
    }
    
    return _gridView;
    
}

@end
