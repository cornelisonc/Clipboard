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


    

}

- (void)viewWillAppear:(BOOL)animated
{
	UISegmentedControl *segmentedControl = (UISegmentedControl *)self.navigationItem.rightBarButtonItem.customView;
	
	// Before we show this view make sure the segmentedControl matches the nav bar style
	if (self.navigationController.navigationBar.barStyle == UIBarStyleBlackTranslucent || self.navigationController.navigationBar.barStyle == UIBarStyleBlackOpaque){
		segmentedControl.tintColor = [UIColor darkGrayColor];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
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
	[_segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
        
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
            return _objects.count;
            break;
        case 1:
            return 10;
            break;
        case 2:
            return 11;
            break;
        default:
            return 0;
            break;
    }
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,tableView.frame.size.width,44.0f)];
    
    [self initSegmentControl];
    
    [headerView addSubview:_segmentedControl];
    
    return headerView;
    
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return  44.0f;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
   
    NSDate *object = _objects[indexPath.row];
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            cell.textLabel.text = [object description];
            break;
        case 1:
            cell.textLabel.text = @"HEY";
            break;
        case 2:
            cell.textLabel.text = @"SUP";
            break;
        default:
            break;
    }
    
    return cell;
}

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

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDate *object = _objects[indexPath.row];
    self.detailViewController.detailItem = object;
}


@end
