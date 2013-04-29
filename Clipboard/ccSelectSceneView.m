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
    }
    return self;
}

- (UIImageView *)logoImageView
{
    if (!_logoImageView) {
        UIImage *logo = [UIImage imageNamed:@"logo.png"];
        _logoImageView = [[UIImageView alloc] initWithImage:logo];
        
        [_logoImageView setFrame:CGRectMake(self.frame.size.width/2, 0, logo.size.width, logo.size.height)];
        
        [_logoImageView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin];
        
        [_logoImageView setBackgroundColor:[UIColor redColor]];
    }
    return _logoImageView;
}
 - (UILabel *)headerLabel
{
    if(!_headerLabel) {
        _headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, _logoImageView.frame.size.height, self.frame.size.width, 44.0f)];
		[_headerLabel setBackgroundColor: [UIColor whiteColor]];
		[_headerLabel setTextColor:[UIColor blackColor]];
        [_headerLabel setFont:[UIFont fontWithName:@"ArialMT" size:12]];
        
        [_headerLabel setText:[NSString stringWithFormat:@"INCIDENT TIME LOCATION BUILDING TYPE APPARATUS"]];
        
    }
    
    return _headerLabel;
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
