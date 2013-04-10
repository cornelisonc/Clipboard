//
//  ccDetailViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/9/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccGridView.h"

@interface ccDetailViewController : UIViewController<UISplitViewControllerDelegate>

@property (nonatomic, strong) id detailItem;
@property (nonatomic, strong) UILabel *detailDescriptionLabel;
@property (nonatomic, strong) ccGridView *gridView;

@end
