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
		ccFireInstance *instance = [[ccFireInstance alloc] initWithDictionary:dictionary];
		[arrayToSend addObject:instance];
	}
	
	NSArray *finalArray = [NSArray arrayWithArray:arrayToSend];
	
	[[NSNotificationCenter defaultCenter] postNotificationName:@"MUITCelebirdsDidParseNotification" object:self userInfo:@{@"instances" : finalArray}];
}


@end

