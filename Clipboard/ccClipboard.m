//
//  ccClipboard.m
//  Clipboard
//
//  Created by Ceili Cornelison on 3/14/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccClipboard.h"

@implementation ccClipboard : NSObject 

- (id)initSelectScene:(NSString *)string
{
	self = [super init];
	if (self) {
		_pathToLogo = string;
	}
	return self;
}

@end