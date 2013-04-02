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
@property (nonatomic, strong) NSString *methAlarm;
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


//This took a long time to code

-(id)initWithDictionary:(NSDictionary *) FireInstanceDictionary;

@end

