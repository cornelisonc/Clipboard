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

-(void)encodeWithEncoder:(NSCoder *)coder
{
    [coder encodeObject:_appop forKey:@"Appop"];
    [coder encodeObject:_colorCode forKey:@"ColorCode"];
    [coder encodeObject:_DOB forKey:@"DOB"];
    [coder encodeObject:_DOB_B forKey:@"DOB_B"];
    [coder encodeObject:_email forKey:@"email"];
    [coder encodeObject:_FF1 forKey:@"FF1"];
    [coder encodeObject:_FF2 forKey:@"FF2"];
    [coder encodeObject:_fireFighterID forKey:@"FireInspect"];
    [coder encodeObject:_fireInv forKey:@"FireInv"];
    [coder encodeObject:_fireInvest forKey:@"FireInvest"];
    [coder encodeObject:_hazMatAW forKey:@"HazMatAw"];
    [coder encodeObject:_hazMatOps forKey:@"HazMatOps"];
    [coder encodeObject:_hazMatTech forKey:@"HazMatTech"];
    [coder encodeObject:_instruct1 forKey:@"Instruct1"];
    [coder encodeObject:_instruct2 forKey:@"Instruct2"];
    [coder encodeObject:_is100 forKey:@"Is100"];
    [coder encodeObject:_is200 forKey:@"Is200"];
    [coder encodeObject:_is300 forKey:@"Is300"];
    [coder encodeObject:_is400 forKey:@"Is400"];
    [coder encodeObject:_is700 forKey:@"Is700"];
    [coder encodeObject:_is800 forKey:@"Is800"];
    [coder encodeObject:_firstName forKey:@"FirstName"];
    [coder encodeObject:_middleName forKey:@"MiddleName"];
    [coder encodeObject:_lastName forKey:@"LastName"];
    [coder encodeObject:_motf1 forKey:@"Motf1"];
    [coder encodeObject:_motf1_POS forKey:@"Motf1_POS"];
    [coder encodeObject:_officer1 forKey:@"Officer1"];
    [coder encodeObject:_officer2 forKey:@"Officer2"];
    [coder encodeObject:_pName forKey:@"PName"];
    [coder encodeObject:_phone forKey:@"Phone"];
    [coder encodeObject:_photo forKey:@"Photo"];
    [coder encodeObject:_rank forKey:@"Photo"];
    [coder encodeObject:_staffID forKey:@"StaffID"];
    [coder encodeObject:_station forKey:@"Station"];
    [coder encodeObject:_station_B forKey:@"Station_B"];
    [coder encodeObject:_status forKey:@"Status"];
    [coder encodeObject:_status_B forKey:@"Status_B"];
    [coder encodeObject:_vehRescue forKey:@"VehRescue"];
    [coder encodeObject:_fireFighterID forKey:@"id"];
}


@end
