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

@end

@implementation ccSelectSceneViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }

    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToInstanceParse:) name:@"ccFireInstanceDidParseNotification" object:nil];
    
    //set up and configure an operation queue so processing does not happen on the main thread.
    self.operationQueue = [[NSOperationQueue alloc] init];
    [self.operationQueue setMaxConcurrentOperationCount:3];
    
    static NSString *CellIdentifier = @"Cell";
	[self.tableView registerClass:[ccSelectSceneCell class] forCellReuseIdentifier:CellIdentifier];
    ccInstanceProvider *provider = [[ccInstanceProvider alloc] init];
    [provider fetchInstance];
    
}

#pragma mark - Actions

- (void)respondToInstanceParse:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    self.fireInstance = userInfo[@"instances"];
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
		[self.tableView reloadData];
	}];
}

}




#pragma mark - Table view data source

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - _logoImageView.frame.size.width/2, self.view.frame.size.height/2 - _logoImageView.frame.size.height/2,tableView.frame.size.width, _logoImageView.frame.size.height)];

    
    [headerView addSubview:_logoImageView];
    return headerView; 
    
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
   return  _logoImageView.frame.size.height;

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.fireInstance.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //tell the tableview to provide us with a resuable table cell.
    static NSString *CellIdentifier = @"Cell";
    ccSelectSceneCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
   
    
    //configure the cell
    ccFireInstance *fireInstance = self.fireInstance[indexPath.row];
    cell.nameLabel.text = fireInstance.location;
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:15];

    
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
