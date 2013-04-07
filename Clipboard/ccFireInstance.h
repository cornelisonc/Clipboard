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
@property (nonatomic, strong) NSString *callType;
@property (nonatomic, strong) NSString *dispPosition;
@property (nonatomic, strong) NSString *incidentDateTime;
@property (nonatomic, strong) NSString *onSceneDateTime;
@property (nonatomic, strong) NSString *upgradeTime;
@property (nonatomic, strong) NSString *patContactDateTime;
@property (nonatomic, strong) NSString *access_Xcoord;
@property (nonatomic, strong) NSString *access_Ycoord;
@property (nonatomic, strong) NSString *access_Zcoord;
@property (nonatomic, strong) NSString *caution;
@property (nonatomic, strong) NSString *CntyFIPS;
@property (nonatomic, strong) NSString *code;
@property (nonatomic, strong) NSString *District;
@property (nonatomic, strong) NSString *FDIF;
@property (nonatomic, strong) NSString *IEMSNatureCode;
@property (nonatomic, strong) NSString *EMSRespTransTo;
@property (nonatomic, strong) NSString *incidentType;
@property (nonatomic, strong) NSString *incidentNum;
@property (nonatomic, strong) NSString *latitude;
@property (nonatomic, strong) NSString *longitude;
@property (nonatomic, strong) NSString *MDT;
@property (nonatomic, strong) NSString *map;
@property (nonatomic, strong) NSString *methodAlarm;
@property (nonatomic, strong) NSString *onScene;
@property (nonatomic, strong) NSString *patContactTime;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *prePlan;
@property (nonatomic, strong) NSString *proQAFlag;
@property (nonatomic, strong) NSString *proQANumber;
@property (nonatomic, strong) NSString *stateFIPS;
@property (nonatomic, strong) NSString *tac;
@property (nonatomic, strong) NSString *tract;
@property (nonatomic, strong) NSString *trucks;
@property (nonatomic, strong) NSString *trucksColors;
@property (nonatomic, strong) NSString *upgrade;
@property (nonatomic, strong) NSString *zipCode;
@property (nonatomic, strong) NSString *createdAtDateTime;
@property (nonatomic, strong) NSString *instanceId;



//This took a long time to code

-(id)initWithDictionary:(NSDictionary *) FireInstanceDictionary;

@end

