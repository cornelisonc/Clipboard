
//
//  ccSceneSplitViewController.m
//  Clipboard
//
//  Created by William Cleeton on 4/2/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccGridView.h"
#import "ccDetailViewController.h"
#import "ccSelectSceneViewController.h"
#import "ccParCheckViewController.h"
#import "ccSceneSplitViewController.h"

@interface ccSceneSplitViewController ()
{
NSMutableArray *_objects;
}
@property (nonatomic, strong) NSMutableArray* sectionInfoArray;
@property (nonatomic, strong) NSMutableArray* tacticalBenchmarks;
@property (nonatomic, strong) NSMutableArray* considerations;
@property (nonatomic, strong) NSMutableArray* fireInstances;
@property (nonatomic, strong) NSOperationQueue* operationQueue;
@property (nonatomic, strong) NSMutableArray* fireFighters;


@end

@implementation ccSceneSplitViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            self.clearsSelectionOnViewWillAppear = NO;
            self.contentSizeForViewInPopover = CGSizeMake(320.0, self.view.frame.size.height);
            
            
        }
        
        UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen
                                                                      mainScreen] applicationFrame] style:UITableViewStylePlain];
        tableView.autoresizingMask =
        UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
    [tableView setBackgroundColor:[UIColor grayColor]];
        
        self.view = tableView;
        //[tableView reloadData];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToInstanceParse:) name:@"ccFireFightersDidParseNotification" object:nil];
    
    //set up and configure an operation queue so processing does not happen on the main thread.
    self.operationQueue = [[NSOperationQueue alloc] init];
    [self.operationQueue setMaxConcurrentOperationCount:3];
    
    static NSString *CellIdentifier = @"Cell";
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    ccFireFighterProvider *provider = [[ccFireFighterProvider alloc] init];
    [provider fetchFireFighter];
    
    // to display selectSceneViewController
    
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self initButtons];
    
    ccSelectSceneViewController *selectSceneViewController =  [[ccSelectSceneViewController alloc] init];
    self.selectSceneViewController = selectSceneViewController;
    

    [self.navigationController setToolbarHidden:NO];
    
    [self initTacticalBenchmark];
    [self initConsiderations];
    [self initSegmentControl];
    

    [_segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];

}

- (void)respondToInstanceParse:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    self.fireFighters = userInfo[@"fireFighters"];
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
		[self.tableView reloadData];
	}];
}

#pragma mark - Init

-(void)passFireInstance:(id)fireInstance
{
    
    self.fireInstances = fireInstance;
}

-(void)initButtons
{
    //Init Buttons
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStyleBordered target:self action:@selector(homeButtonPressed:)];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:nil];
    UIBarButtonItem *editButton = self.editButtonItem;
    UIBarButtonItem *parButton = [[UIBarButtonItem alloc] initWithTitle:@"Par" style:UIBarButtonItemStyleBordered target:self action:@selector(parButtonPressed:)];
    self.navigationItem.rightBarButtonItem = parButton;
    
    [self setToolbarItems:[NSArray arrayWithObjects:addButton,editButton, nil] animated:NO];
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

- (void)initTacticalBenchmark
{
    NSMutableArray *tacticalBenchmark = [[NSMutableArray alloc] init];
    [tacticalBenchmark addObject:@"360 COMPLETE"];
    [tacticalBenchmark addObject:@"PRIMARY ALL CLEAR"];
    [tacticalBenchmark addObject:@"WATER ON FIRE"];
    [tacticalBenchmark addObject:@"WATER SUPPLY ESTABLISHED"];
    [tacticalBenchmark addObject:@"SECONDARY ALL CLEAR"];
    [tacticalBenchmark addObject:@"LOSS STOPPED/FIRE CONTROL"];
    [tacticalBenchmark addObject:@"MARK THE INCIDENT UNDER CONTROL"];
    
    self.tacticalBenchmarks = tacticalBenchmark;



}

-(void)initConsiderations
{
    NSMutableArray *considerations = [[NSMutableArray alloc] init];
    [considerations addObject:@"SECURE UTILITES"];
    [considerations addObject:@"LADDERS"];
    [considerations addObject:@"SALVAGE/LOSS CONTROL"];
    [considerations addObject:@"CUSTOMER NOTIFICATION"];
    [considerations addObject:@"CUSTOMER STABILIZATION"];
    [considerations addObject:@"REHAB"];
    [considerations addObject:@"INVESTIGATION"];
    [considerations addObject:@"DEBRIEF"];

    self.considerations = considerations;
    
}
#pragma mark - Actions

- (void)homeButtonPressed:(id)sender
{
    
    [self.splitViewController presentViewController:_selectSceneViewController animated:YES completion: nil];
}

- (void)parButtonPressed:(id)sender
{
    ccParCheckViewController *parCheckViewController = [[ccParCheckViewController alloc] init];
    [self presentViewController:parCheckViewController animated:YES completion:nil];
    
}

-(void)segmentAction:(id)sender
{
    
    [self.tableView reloadData];

}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            return 1;
            break;
        case 1:
            return 2;
            break;
        case 2:
            return 2;
            break;
        default:
            return 1;
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"section %i", self.segmentedControl.selectedSegmentIndex);
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            NSLog(@"fireFighters %i", _fireFighters.count);
            return _fireFighters.count;
            break;
        case 1:
            if (section == 0) {
             return _tacticalBenchmarks.count;

            }
            else if (section == 1) {
              return _considerations.count;
            }
            return 0;
            break;
        case 2:
            return 1;
            break;
        default:
            return 0;
            break;
    }
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,tableView.frame.size.width,44)];
    UISearchBar *testbar = [[UISearchBar alloc] initWithFrame:CGRectMake(0,44,320,44)];
    if (section == 0) {
        [headerView addSubview:_segmentedControl];

    }
    UIButton *headerLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [headerLabel setFrame:CGRectMake(0,0, 320, 44)];
    
    [headerLabel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    UIImage *_largeLabelImage = [UIImage imageNamed:[NSString stringWithFormat:@"large.png"]];
    [headerLabel setBackgroundImage: _largeLabelImage    forState:UIControlStateNormal];

    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            [headerView addSubview:testbar];
            return headerView;
            break;
        case 1:
            if (section == 0) {
                [headerLabel setFrame:CGRectMake(0, 44, 320, 44)];
                [headerLabel setTitle:@"TACTICAL BENCHMARKS" forState:UIControlStateNormal];            }
            else if (section == 1) {
                [headerLabel setTitle:@"CONSIDERATIONS" forState:UIControlStateNormal];            }
            [headerView addSubview:headerLabel];
            return headerView;
            break;
        case 2:
            if (section == 0) {
                [headerLabel setFrame:CGRectMake(0, 44, 320, 44)];
                [headerLabel setTitle:@"APPARATUS" forState:UIControlStateNormal]; 
            }
            else if (section == 1)
            {
                [headerLabel setTitle:@"INITIAL DISPATCH" forState:UIControlStateNormal]; 
            }
            [headerView addSubview:headerLabel];
            return headerView;
            break;
        default:
            return headerView;
            break;
    }

    return headerView;
    
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) return 88;
    else return 44;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
        {
            ccFireFighter *fireFighters = self.fireFighters[indexPath.row];
            cell.textLabel.text = fireFighters.firstName;
        }
            break;
        case 1:
        {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            [cell.textLabel setTextColor:[UIColor whiteColor]];
            if (indexPath.section == 0) {
                cell.textLabel.text = [_tacticalBenchmarks objectAtIndex:indexPath.row];
            }else if (indexPath.section ==1){
                cell.textLabel.text = [_considerations objectAtIndex:indexPath.row];
            }
        }
            break;
        case 2:
        {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            cell.textLabel.text = @"Log";
            break;
        }
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
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


@end
