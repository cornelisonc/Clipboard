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
        _location = FireInstanceDictionary[@"Location"];
        _building = FireInstanceDictionary[@"Building"];
        _nature = FireInstanceDictionary[@"Nature"];
        _priority = FireInstanceDictionary[@"Priority"];
        _dispatchCode = FireInstanceDictionary[@"DispatchCode"];
        _grid = FireInstanceDictionary[@"Grid"];
        _fireArea = FireInstanceDictionary[@"FireArea"];
        _cross1 = FireInstanceDictionary[@"Cross1"];
        _cross2 = FireInstanceDictionary[@"Cross2"];
        _hydrant1 = FireInstanceDictionary[@"Hyd1"];
        _hydrant2 = FireInstanceDictionary[@"Hyd2"];
        _complainant = FireInstanceDictionary[@"Complaint"];
        _callback = FireInstanceDictionary[@"Callback"];
        _dispatcher = FireInstanceDictionary[@"Dispatcher"];
        _callTaker = FireInstanceDictionary[@"CallTaker"];
        _callType = FireInstanceDictionary[@"CallType"];
        _dispPosition = FireInstanceDictionary[@"Disposition"];
        _incidentDateTime = FireInstanceDictionary[@"IncDate"];
        _onSceneDateTime = FireInstanceDictionary[@"OnScene"];
        _upgradeTime = FireInstanceDictionary[@"Upgrade"];
        _patContactDateTime = FireInstanceDictionary[@"PatContactTime"];
        _access_Xcoord = FireInstanceDictionary[@"Access_Xcoord"];
        _access_Ycoord = FireInstanceDictionary[@"Access_Ycoord"];
        _access_Zcoord = FireInstanceDictionary[@"Access_Zcoord"];
        _caution = FireInstanceDictionary[@"Caution"];
        _CntyFIPS = FireInstanceDictionary[@"CntyFIPS"];
        _code = FireInstanceDictionary[@"Code"];
        _District = FireInstanceDictionary[@"District"];
        _FDIF = FireInstanceDictionary[@"FDIF"];
        _IEMSNatureCode = FireInstanceDictionary[@"IEMSNatureCode"];
        _EMSRespTransTo = FireInstanceDictionary[@"EMSRespTransTo"];
        _incidentType = FireInstanceDictionary[@"IncType"];
        _incidentNum = FireInstanceDictionary[@"IncidentNo"];
        _latitude = FireInstanceDictionary[@"Latitude"];
        _longitude = FireInstanceDictionary[@"Longitutde"];
        _MDT = FireInstanceDictionary[@"MDT"];
        _map = FireInstanceDictionary[@"Map"];
        _methodAlarm = FireInstanceDictionary[@"MethodAlarm"];
        _phone = FireInstanceDictionary[@"Phone"];
        _prePlan = FireInstanceDictionary[@"PrePlan"];
        _proQAFlag = FireInstanceDictionary[@"ProQAFlag"];
        _proQANumber = FireInstanceDictionary[@"ProQANumber"];
        _stateFIPS = FireInstanceDictionary[@"StateFIPS"];
        _tac = FireInstanceDictionary[@"Tac"];
        _tract = FireInstanceDictionary[@"Tract"];
        _trucks = FireInstanceDictionary[@"Trucks"];
        _trucksColors = FireInstanceDictionary[@"TrucksColors"];
        _zipCode = FireInstanceDictionary[@"Zip"];
        _createdAtDateTime = FireInstanceDictionary[@"created_at"];
        _updateAtDateTime= FireInstanceDictionary[@"updated_at"];
        _instanceId = FireInstanceDictionary[@"id"];
    }
    
    return self;
}



@end
