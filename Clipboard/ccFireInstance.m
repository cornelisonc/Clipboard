//
//  ccFireInstance.m
//  Clipboard
//
//  Created by Borrower on 3/18/13.
//  Copyright (c) 2013 muit. All rights reserved.
//


#import "ccFireInstance.h"

@implementation ccFireInstance

-(id)initWithLocation:(NSString *)loc andBuilding: (NSString *)build andNature: (NSString *)nat andPriority: (NSString *)pri andDispatchCode: (NSString *)dispCo andGrid: (NSString *)grid andFireArea: (NSString *)firAr andCross: (NSString *)cro1 andCross: (NSString *)cro2 andHydrant: (NSString *)hyd1 andHydrant: (NSString *)hyd2 andComplaint: (NSString *)comp andCallback: (NSString *)calBak andDispatcher: (NSString *)disp andCallTaker: (NSString *)calTkr andDispO: (NSString *)dispO andMethAlarm: (NSString *)metAlrm andIncidentDateTime: (NSString *)incDT andOnSceneDateTime: (NSString *)onScDT andUpgradeTime: (NSString *)upDT andPatContactDateTime: (NSString *)patConDT
{
    self = [super init];
    if(self)
    {
        _location = loc;
        _building = build;
        _nature = nat;
        _priority = pri;
        _dispatchCode = dispCo;
        _grid = grid;
        _fireArea = firAr;
        _cross1 = cro1;
        _cross2 = cro2;
        _hydrant1 = hyd1;
        _hydrant2 = hyd2;
        _complainant = comp;
        _callback = calBak;
        _dispatcher = disp;
        _callTaker = calTkr;
        _dispO = dispO;
        _methAlarm = metAlrm;
        _incidentDateTime = incDT;
        _onSceneDateTime = onScDT;
        _upgradeTime = upDT;
        _patContactDateTime = patConDT;
    }
    
    return self;
}



@end
