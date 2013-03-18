//
//  ccInstanceProvider.h
//  Clipboard
//
//  Created by Borrower on 3/18/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ccFireInstance.h"

@interface ccInstanceProvider : NSObject

@property (nonatomic, strong) NSMutableArray *instances;

- (void)fetchInstance;

@end
