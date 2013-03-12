//
//  ccSelectSceneView.m
//  Clipboard
//
//  Created by Ceili Cornelison on 3/12/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccSelectSceneView.h"

@implementation ccSelectSceneView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addSubview:self.logoImageView];
        [self addSubview:self.selectSceneTableView];
    }
    return self;
}

- (UIImageView *)logoImageView
{
    if (!_logoImageView) {
        _logoImageView = [[UIImageView alloc] init0];
        
        [_logoImageView setFrame:CGRectMake(0, 0, 320, 415)];
        
        [_logoImageView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
    }
    
    return _logoImageView;
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
