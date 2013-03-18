//
//  ccFireInstance.h
//  Clipboard
//
//  Created by Borrower on 3/18/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ccFireInstance : NSObject

@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *building;
@property (nonatomic, strong) NSString *nature;
@property (nonatomic, strong) NSString *priority;
@property (nonatomic, strong) NSString *dispatchCode;
@property (nonatomic, strong) NSString *grid;
@property (nonatomic, strong) NSString *fireArea;
@property (nonatomic, strong) NSString *cross1;
@property (nonatomic, strong) NSString *cross2;
@property (nonatomic, strong) NSString *hydrant1;
@property (nonatomic, strong) NSString *hydrant2;
@property (nonatomic, strong) NSString *complainant;
@property (nonatomic, strong) NSString *callback;
@property (nonatomic, strong) NSString *dispatcher;
@property (nonatomic, strong) NSString *callTaker;
@property (nonatomic, strong) NSString *dispO;
@property (nonatomic, strong) NSString *methAlarm;
@property (nonatomic, strong) NSString *incidentDateTime;
@property (nonatomic, strong) NSString *onSceneDateTime;
@property (nonatomic, strong) NSString *upgradeTime;
@property (nonatomic, strong) NSString *patContactDateTime;

-(id)initWithLocation:(NSString *)loc andBuilding: (NSString *)build andNature: (NSString *)nat andPriority: (NSString *)pri andDispatchCode: (NSString *)dispCo andGrid: (NSString *)grid andFireArea: (NSString *)firAr andCross: (NSString *)cro1 andCross: (NSString *)cro2 andHydrant: (NSString *)hyd1 andHydrant: (NSString *)hyd2 andComplaint: (NSString *)comp andCallback: (NSString *)calBak andDispatcher: (NSString *)disp andCallTaker: (NSString *)calTkr andDispO: (NSString *)dispO andMethAlarm: (NSString *)metAlrm andIncidentDateTime: (NSString *)incDT andOnSceneDateTime: (NSString *)onScDT andUpgradeTime: (NSString *)upDT andPatContactDateTime: (NSString *)patConDT;

@end

