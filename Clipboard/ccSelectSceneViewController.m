//
//  ccSelectSceneViewController.m
//  Clipboard
//
//  Created by Ceili Cornelison on 3/12/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccSelectSceneViewController.h"

@interface ccSelectSceneViewController ()

@property (nonatomic, strong) NSOperationQueue *operationQueue;
@property (nonatomic, strong) NSMutableArray *downloads;

@end

@implementation ccSelectSceneViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    static NSString *CellIdentifier = @"Cell";
	[self.tableView registerClass:[ccSelectSceneCell class] forCellReuseIdentifier:CellIdentifier];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToInstanceParse:) name:@"ccFireInstanceDidParseNotification" object:nil];
    
    //set up and configure an operation queue so processing does not happen on the main thread.
    self.operationQueue = [[NSOperationQueue alloc] init];
    [self.operationQueue setMaxConcurrentOperationCount:3];
    
    //set up data
    [self setupScenes];
    
    
    
}

#pragma mark - Actions

- (void)respondToInstanceParse:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    self.scene = userInfo[@"instances"];
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
		[self.tableView reloadData];
	}];
    
}

-(void)setupScenes
{
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    ccSelectSceneCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
   
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:15];
    cell.textLabel.text = [NSString  stringWithFormat:@"Cell Row #%d", [indexPath row]];
    
    
    return cell;
}

#pragma mark    - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //detailViewController.title = self.nameLabel[indexPath.row];
    // ...
    // Pass the selected object to the new view controller.
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



@end
