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
        _logoImageView = [[UIImageView alloc] init];
        
        [_logoImageView setFrame:CGRectMake(140, 0, [UIScreen mainScreen].bounds.size.width, 160)];
        
        [_logoImageView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
        
        [_logoImageView setBackgroundColor:[UIColor redColor]];
    }
    
    return _logoImageView;
}

- (UITableView *)selectSceneTableView
{
    
    if(!_selectSceneTableView){
        
        
        
        _selectSceneTableView = [[UITableView alloc] init];
        
        [_selectSceneTableView setFrame:CGRectMake(140, 160, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        
        
        [_selectSceneTableView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
    
        
    }

    return _selectSceneTableView;
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
