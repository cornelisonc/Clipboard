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
//@property (nonatomic, strong) ccSelectSceneViewController *selectSceneViewController;

@end

@implementation ccDetailViewController

#pragma mark - viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.//
    

    [self setTitle:[NSString stringWithFormat:@"Command Center"]];
    [self onOffSwitch];
    ccSelectSceneViewController *selectSceneViewController =  [[ccSelectSceneViewController alloc] init];
    self.selectSceneViewController = selectSceneViewController;
    [self configureView];
}

-(void)viewWillAppear:(BOOL)animated
{
        //[self.splitViewController presentViewController:_selectSceneViewController animated:YES completion:nil];
    
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
    
    [_locationLabel setTitle:[NSString stringWithFormat:@"Location: %@", _selectSceneViewController.fireInstance]  forState:UIControlStateNormal];

    
    
    self.gridView = wholeGridView.gridView;
    self.timerLabel = wholeGridView.timerLabel;
    self.locationLabel = wholeGridView.locationLabel;
    self.buildingLabel = wholeGridView.buildingLabel;
    self.typeOfFireLabel = wholeGridView.typeOfFireLabel;
    self.commanderLabel = wholeGridView.commanderLabel;
    self.commandAideLabel = wholeGridView.commandAideLabel;
    self.safetyOfficerLabel = wholeGridView.safetyOfficerLabel;
    self.PIOLabel = wholeGridView.PIOLabel;
    self.fireInvestigatorLabel = wholeGridView.fireInvestigatorLabel;
    self.strategyLabel = wholeGridView.strategyLabel;
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



- (void)flip:(id)sender {
    if (_onoff.on){
        UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Are you sure you want to take Command?" message:@"Taking command will override all other user's ability to add personal." delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
        [errorAlert show];
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
