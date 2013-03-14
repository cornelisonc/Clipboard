//
//  ccClipboard.h
//  Clipboard
//
//  Created by Ceili Cornelison on 3/14/13.
//  Copyright (c) 2013 muit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ccClipboard : NSObject

@property (nonatomic, strong) NSString *pathToLogo;

- (id)initSelectScene:(NSString *)string;

@end