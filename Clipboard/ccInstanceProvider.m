//
//  ccInstanceProvider.m
//  Clipboard
//
//  Created by Borrower on 3/18/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccInstanceProvider.h"

@interface ccInstanceProvider ()

@end


@implementation ccInstanceProvider

- (void)fetchInstance
{
	NSOperationQueue *operationQueue = [[NSOperationQueue alloc] init];
	NSString *URLString = @"http://firefighters/boonecounty/autocad.json"; //not the real url, just placeholder
	NSURL *URL = [NSURL URLWithString:URLString];
	NSURLRequest *request = [NSURLRequest requestWithURL:URL];
	[NSURLConnection sendAsynchronousRequest:request queue:operationQueue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
		[self parseInstanceWithData:data];
	}];
}

- (void)parseInstanceWithData:(NSData *)data
{
	NSDictionary *dictionaryFromData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
	NSArray *instanceFromData = dictionaryFromData[@"instances"]; //this may be an incorrect assignment to @"instances"
	
	NSMutableArray *arrayToSend = [NSMutableArray array];
	for (NSDictionary *dictionary in instanceFromData) {
		NSString *loc = dictionary[@"location"];
        NSString *build = dictionary[@"building"];
        NSString *nat = dictionary[@"nature"];
        NSString *pri = dictionary[@"priority"];
        NSString *dispCo = dictionary[@"dispatchCode"];
        NSString *grid = dictionary[@"grid"];
        NSString *firAr = dictionary[@"fireArea"];
        NSString *cro1 = dictionary[@"cross1"];
        NSString *cro2 = dictionary[@"cross2"];
        NSString *hyd1 = dictionary[@"hydrant1"];
        NSString *hyd2 = dictionary[@"hydrant2"];
        NSString *comp = dictionary[@"complaint"];
        NSString *calBak = dictionary[@"callBack"];
        NSString *disp = dictionary[@"dispatcher"];
        NSString *calTkr = dictionary[@"callTaker"];
        NSString *dispO = dictionary[@"dispO"];
        NSString *metAlrm = dictionary[@"methAlarm"];
        NSString *incDT = dictionary[@"incidentDateTime"];
        NSString *onScDT = dictionary[@"onSceneDateTime"];
        NSString *upDT = dictionary[@"upgradeDateTime"];
        NSString *patConDT = dictionary[@"patContactDateTime"];
        
		
		ccFireInstance *instance = [[ccFireInstance alloc] initWithLocation:(NSString *)loc andBuilding: (NSString *)build andNature: (NSString *)nat andPriority: (NSString *)pri andDispatchCode: (NSString *)dispCo andGrid: (NSString *)grid andFireArea: (NSString *)firAr andCross: (NSString *)cro1 andCross: (NSString *)cro2 andHydrant: (NSString *)hyd1 andHydrant: (NSString *)hyd2 andComplaint: (NSString *)comp andCallback: (NSString *)calBak andDispatcher: (NSString *)disp andCallTaker: (NSString *)calTkr andDispO: (NSString *)dispO andMethAlarm: (NSString *)metAlrm andIncidentDateTime: (NSString *)incDT andOnSceneDateTime: (NSString *)onScDT andUpgradeTime: (NSString *)upDT andPatContactDateTime: (NSString *)patConDT];
		[arrayToSend addObject:instance];
	}
	
	NSArray *finalArray = [NSArray arrayWithArray:arrayToSend];
	
	[[NSNotificationCenter defaultCenter] postNotificationName:@"MUITCelebirdsDidParseNotification" object:self userInfo:@{@"instances" : finalArray}];
}


@end

