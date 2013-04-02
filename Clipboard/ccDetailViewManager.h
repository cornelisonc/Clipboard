//
//  ccDetailViewManager.h
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol SubstitutableDetailViewController
@property (nonatomic, strong) UIBarButtonItem *navigationPaneBarButtonItem;
@end

@interface ccDetailViewManager : NSObject <UISplitViewControllerDelegate>

@property (nonatomic, strong) IBOutlet UISplitViewController *splitViewController;
@property (nonatomic, retain) IBOutlet UIViewController<SubstitutableDetailViewController> * detailViewController;

@end
