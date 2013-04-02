//
//  ccSceneSplitViewController.h
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ccSceneSplitViewController : UISplitViewController

@property (nonatomic, strong) UITabBarController *tabBarController;
@property (nonatomic, strong) UIViewController *viewController;

@end
