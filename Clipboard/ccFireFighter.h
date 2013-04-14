//
//  ccFireFighter.h
//  Clipboard
//
//  Created by Borrower on 4/9/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ccFireFighter : NSObject

@property(atomic, strong) NSString *appop;
@property(atomic, strong) NSString *colorCode;
@property(atomic, strong) NSString *DOB;
@property(atomic, strong) NSString *DOB_B;
@property(atomic, strong) NSString *email;
@property(atomic, strong) NSString *FF1;
@property(atomic, strong) NSString *FF2;
@property(atomic, strong) NSString *fireInspect;
@property(atomic, strong) NSString *fireInv;
@property(atomic, strong) NSString *fireInvest;
@property(atomic, strong) NSString *firstName;
@property(atomic, strong) NSString *hazMatAW;
@property(atomic, strong) NSString *hazMatOps;
@property(atomic, strong) NSString *hazMatTech;
@property(atomic, strong) NSString *instruct1;
@property(atomic, strong) NSString *instruct2;
@property(atomic, strong) NSString *is100;
@property(atomic, strong) NSString *is200;
@property(atomic, strong) NSString *is300;
@property(atomic, strong) NSString *is400;
@property(atomic, strong) NSString *is700;
@property(atomic, strong) NSString *is800;
@property(atomic, strong) NSString *lastName;
@property(atomic, strong) NSString *middleName;
@property(atomic, strong) NSString *motf1;
@property(atomic, strong) NSString *motf1_POS;
@property(atomic, strong) NSString *officer1;
@property(atomic, strong) NSString *officer2;
@property(atomic, strong) NSString *pName;
@property(atomic, strong) NSString *phone;
@property(atomic, strong) NSString *photo;
@property(atomic, strong) NSString *rank;
@property(atomic, strong) NSString *staffID;
@property(atomic, strong) NSString *station;
@property(atomic, strong) NSString *station_B;
@property(atomic, strong) NSString *status;
@property(atomic, strong) NSString *status_B;
@property(atomic, strong) NSString *vehRescue;
@property(atomic, strong) NSString *created_at;
@property(atomic, strong) NSString *updated_at;
@property(atomic, strong) NSString *fireFighterID;

-(id)initWithDictionary:(NSDictionary *) FireFighterDictionary;

@end
