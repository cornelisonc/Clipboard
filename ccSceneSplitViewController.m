//
//  ccSceneSplitViewController.m
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccSceneSplitViewController.h"

@interface ccSceneSplitViewController (){

NSMutableArray *_objects;
}
@end

@implementation ccSceneSplitViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ccSelectSceneViewController *selectSceneViewController = [[ccSelectSceneViewController alloc] init];
    // to display selectSceneViewController
    [self presentViewController:selectSceneViewController animated:YES completion: nil];

    
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Init Back Button
    [self initBackButton];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(backButtonPressed:)];
    
    //Uncomment to display add icon
    /*
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    */

    [self initSegmentControl];
    
    [_segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];


}

#pragma mark - Init

- (void)initBackButton
{
    
    UIImage *backButtonImage = [UIImage imageNamed:@"backbutton.psd"];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:backButtonImage style:UIBarButtonItemStylePlain target:self.navigationController action:@selector(backButtonPressed:)];
    [self.navigationItem setLeftBarButtonItem:backButton];
    
}

- (void)initSegmentControl
{
	// segmented control as the custom title view
	NSArray *segmentTextContent = [NSArray arrayWithObjects:
                                   NSLocalizedString(@"People", @""),
                                   NSLocalizedString(@"Protocols", @""),
                                   NSLocalizedString(@"Log", @""),
								   nil];
	_segmentedControl = [[UISegmentedControl alloc] initWithItems:segmentTextContent];
	_segmentedControl.selectedSegmentIndex = 0;
	_segmentedControl.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	_segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
	_segmentedControl.frame = CGRectMake(0, 0, 320, 44.0f);
        
}

#pragma mark - Actions

- (IBAction)backButtonPressed:(id)sender
{
    ccSelectSceneViewController *selectSceneViewController = [[ccSelectSceneViewController alloc] init];
    [self presentViewController:selectSceneViewController animated:YES completion:nil];
}



-(IBAction)segmentAction:(id)sender
{
    
    [self.tableView reloadData];
    
    
}




#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            return 10;
            break;
        case 1:
            return 10;
            break;
        case 2:
            return 10;
            break;
        default:
            return 0;
            break;
    }
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,tableView.frame.size.width,44)];
        
    [headerView addSubview:_segmentedControl];

    return headerView;
    
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return  44;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            cell.textLabel.text = @"J. Doe";
            break;
        case 1:
            cell.textLabel.text = @"Tactical Benchmarks";
            break;
        case 2:
            cell.textLabel.text = @"Log";
            break;
        default:
            break;
    }
    
    return cell;
}
/*
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        switch (self.segmentedControl.selectedSegmentIndex) {
            case 0:
                [_objects removeObjectAtIndex:indexPath.row];
                break;
                
            default:
                break;
        }
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}


@end
