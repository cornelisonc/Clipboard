//
//  ccFireInstance.m
//  Clipboard
//
//  Created by Borrower on 3/18/13.
//  Copyright (c) 2013 muit. All rights reserved.
//


#import "ccFireInstance.h"

@implementation ccFireInstance

-(id)initWithDictionary:(NSDictionary *) FireInstanceDictionary
{
    self = [super init];
    if(self)
    {
        _location = FireInstanceDictionary[@"location"];
        _building = FireInstanceDictionary[@"building"];
        _nature = FireInstanceDictionary[@"nature"];
        _priority = FireInstanceDictionary[@"priority"];
        _dispatchCode = FireInstanceDictionary[@"dispatchCode"];
        _grid = FireInstanceDictionary[@"grid"];
        _fireArea = FireInstanceDictionary[@"fireArea"];
        _cross1 = FireInstanceDictionary[@"cross1"];
        _cross2 = FireInstanceDictionary[@"cross2"];
        _hydrant1 = FireInstanceDictionary[@"hydrant1"];
        _hydrant2 = FireInstanceDictionary[@"hydrant2"];
        _complainant = FireInstanceDictionary[@"complaint"];
        _callback = FireInstanceDictionary[@"callback"];
        _dispatcher = FireInstanceDictionary[@"dispatcher"];
        _callTaker = FireInstanceDictionary[@"callTaker"];
        _callType = FireInstanceDictionary[@"callType"];
        _dispPosition = FireInstanceDictionary[@"dispPosition"];
        _incidentDateTime = FireInstanceDictionary[@"incidentDateTime"];
        _onSceneDateTime = FireInstanceDictionary[@"onSceneDateTime"];
        _upgradeTime = FireInstanceDictionary[@"upgradeTime"];
        _patContactDateTime = FireInstanceDictionary[@"patContactDateTime"];
    }
    
    return self;
}



@end
