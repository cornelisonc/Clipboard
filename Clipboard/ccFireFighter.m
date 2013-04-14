//
//  ccFireFighter.m
//  Clipboard
//
//  Created by Borrower on 4/9/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import "ccFireFighter.h"

@implementation ccFireFighter

-(id)initWithDictionary:(NSDictionary *) FireFighterDictionary
{
    self = [super init];
    if(self)
    {
        _appop = FireFighterDictionary[@"Appop"];
        _colorCode = FireFighterDictionary[@"ColorCode"];
        _DOB = FireFighterDictionary[@"DOB"];
        _DOB_B = FireFighterDictionary[@"DOB_B"];
        _email = FireFighterDictionary[@"Email"];
        _FF1 = FireFighterDictionary[@"FF1"];
        _FF2 = FireFighterDictionary[@"FF2"];
        _fireInspect = FireFighterDictionary[@"FireInspect"];
        _fireInv = FireFighterDictionary[@"FireInv"];
        _fireInvest = FireFighterDictionary[@"FireInvest"];
        _hazMatAW = FireFighterDictionary[@"HazMatAw"];
        _hazMatOps = FireFighterDictionary[@"HazMatOps"];
        _hazMatTech = FireFighterDictionary[@"HazMatTech"];
        _instruct1 = FireFighterDictionary[@"Instruct1"];
        _instruct2 = FireFighterDictionary[@"Instruct2"];
        _is100 = FireFighterDictionary[@"Is100"];
        _is200 = FireFighterDictionary[@"Is200"];
        _is300 = FireFighterDictionary[@"Is300"];
        _is400 = FireFighterDictionary[@"Is400"];
        _is700 = FireFighterDictionary[@"Is700"];
        _is800 = FireFighterDictionary[@"Is800"];
        _firstName = FireFighterDictionary[@"FirstName"];
        _middleName = FireFighterDictionary[@"MiddleName"];
        _lastName = FireFighterDictionary[@"LastName"];
        _motf1 = FireFighterDictionary[@"Motf1"];
        _motf1_POS = FireFighterDictionary[@"Motf1_POS"];
        _officer1 = FireFighterDictionary[@"Officer1"];
        _officer2 = FireFighterDictionary[@"Officer2"];
        _pName = FireFighterDictionary[@"PName"];
        _phone = FireFighterDictionary[@"Phone"];
        _photo = FireFighterDictionary[@"Photo"];
        _rank = FireFighterDictionary[@"Rank"];
        _staffID = FireFighterDictionary[@"StaffID"];
        _station = FireFighterDictionary[@"Station"];
        _station_B = FireFighterDictionary[@"Station_B"];
        _status = FireFighterDictionary[@"Status"];
        _status_B = FireFighterDictionary[@"Status_B"];
        _vehRescue = FireFighterDictionary[@"VehRescue"];
        _created_at = FireFighterDictionary[@"created_at"];
        _updated_at = FireFighterDictionary[@"updated_at"];
        _fireFighterID = FireFighterDictionary[@"id"];
    }
    
    return self;
}


@end
