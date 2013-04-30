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
        ccSelectSceneView *selectSceneView = [[ccSelectSceneView alloc] init];
        self.logoImageView = selectSceneView.logoImageView;
        //[self.view setBackgroundColor:[UIColor grayColor]];
        
        self.modalPresentationStyle = UIModalPresentationPageSheet;
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

#pragma mark - Table view data source

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.frame.size.width, _logoImageView.frame.size.height)];
    
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
   
    if (!cell) {
        cell = [[ccSelectSceneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //configure the cell
    if (indexPath == 0) {
        cell.timeLabel.text = [NSString stringWithFormat:@"TIME"];
        cell.incidentLabel.text = [NSString stringWithFormat:@"INCIDENT"];
        cell.timeLabel.text = [NSString stringWithFormat:@"TIME"];
        cell.locationLabel.text = [NSString stringWithFormat:@"LOCATION"];
        cell.buildingLabel.text = [NSString stringWithFormat:@"BUILDING"];
        cell.typeLabel.text = [NSString stringWithFormat:@"TYPE"];
        cell.apparatusLabel.text = [NSString stringWithFormat:@"APPARATUS"];
    }
    else{
    
        ccFireInstance *fireInstance = self.fireInstance[indexPath.row];
        cell.incidentLabel.text = fireInstance.incidentNum;
        cell.timeLabel.text = fireInstance.incidentDateTime;
        cell.locationLabel.text = fireInstance.location;
        cell.buildingLabel.text = fireInstance.building;
        cell.typeLabel.text = fireInstance.incidentType;
        //cell.apparatusLabel.text = fireInstance.apparaturs;
    
    }
    
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
    
    //[detailViewController passFireInstance:_fireInstance];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}



@end
