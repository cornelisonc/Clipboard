//
//  ccFireFighterProvider.m
//  Clipboard
//
//  Created by Borrower on 4/9/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccFireFighterProvider.h"

@implementation ccFireFighterProvider

- (void)fetchFireFighter
{
	NSOperationQueue *operationQueue = [[NSOperationQueue alloc] init];
	NSString *URLString = @"http://muitclipboard.herokuapp.com/api/v1/personnel_data.json"; //not the real url, just placeholder
	NSURL *URL = [NSURL URLWithString:URLString];
	NSURLRequest *request = [NSURLRequest requestWithURL:URL];
	[NSURLConnection sendAsynchronousRequest:request queue:operationQueue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
		[self parseInstanceWithData:data];
	}];
}

- (void)parseInstanceWithData:(NSData *)data
{
	NSArray *arrayFromData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
	
	
    NSMutableArray *arrayToSend = [NSMutableArray array];
    for (NSDictionary *dictionary in arrayFromData) {
		ccFireFighter *instance = [[ccFireFighter alloc] initWithDictionary:dictionary];
		[arrayToSend addObject:instance];
	}
	
	NSMutableArray *finalArray = [NSMutableArray arrayWithArray:arrayToSend];
	
	[[NSNotificationCenter defaultCenter] postNotificationName:@"ccFireFightersDidParseNotification" object:self userInfo:@{@"fireFighters" : finalArray}];
}


@end
