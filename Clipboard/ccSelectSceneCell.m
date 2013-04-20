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

- (UILabel *)nameLabel
{
	if (!_nameLabel) {
		_nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 220.0f, 44.0f)];
		[_nameLabel setBackgroundColor: [UIColor blueColor]];
		[_nameLabel setTextColor:[UIColor blackColor]];
	}
	return _nameLabel;
    
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        // Initialization code
        [self.contentView addSubview:self.nameLabel];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
   
    if (selected) {
		[UIView animateWithDuration:0.3f animations:^{
            [self.nameLabel setAlpha:0.5f];
		}];
		
	} else {
		[UIView animateWithDuration:0.3f animations:^{
			[self.nameLabel setAlpha:0.5f];
		}];
	}

    // Configure the view for the selected state
    

}

@end
