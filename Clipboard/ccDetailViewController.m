//
//  ccDetailViewController.m
//  Clipboard
//
//  Created by William Cleeton on 4/9/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccDetailViewController.h"

@interface ccDetailViewController ()

@property (nonatomic, strong) UIPopoverController *masterPopoverController;
-(void)configureView;


@end

@implementation ccDetailViewController

#pragma mark - viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.//
    [self configureView];
    [self setTitle:@"Command Center"];
    [self onOffSwitch];
    
}
#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.

        [self configureView];

        
    }
    
    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];        
    }
    
    
    
    //Init the GridView
    ccGridView *wholeGridView = [[ccGridView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    
    //set the all the Labels
    
    self.wholeGridView.gridView = wholeGridView.gridView; 
    self.wholeGridView.timeLabel = wholeGridView.timeLabel;
    self.wholeGridView.timerLabel = wholeGridView.timerLabel;
    self.wholeGridView.locationLabel = wholeGridView.locationLabel;
    self.wholeGridView.buildingLabel = wholeGridView.buildingLabel;
    self.wholeGridView.typeOfFireLabel = wholeGridView.typeOfFireLabel;
    self.wholeGridView.commanderLabel = wholeGridView.commanderLabel;
    self.wholeGridView.commandAideLabel = wholeGridView.commandAideLabel;
    self.wholeGridView.safetyOfficerLabel = wholeGridView.safetyOfficerLabel;
    self.wholeGridView.PIOLabel = wholeGridView.PIOLabel;
    self.wholeGridView.fireInvestigatorLabel = wholeGridView.fireInvestigatorLabel;
    self.wholeGridView.strategyLabel = wholeGridView.strategyLabel;
    self.wholeGridView = wholeGridView;

    wholeGridView.owner = self;
    self.view = wholeGridView;
     
}

#pragma mark - actions


-(UISwitch *)onOffSwitch {
    
    _onoff = [[UISwitch alloc] init];
    
    [_onoff addTarget: self action: @selector(flip:) forControlEvents:UIControlEventValueChanged];
    // Set the desired frame location of onoff here
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:_onoff];
    
    return _onoff;
    
}

- (IBAction)flip:(id)sender {
    if (_onoff.on){
        NSLog(@"On");
    }
    else{
        NSLog(@"Off");
    }
}



#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = @"Menu";
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
    
}

@end
