//
//  AnalyticsLib.h
//  HuiCat
//
//  Created by Kalicy on 14-7-2.
//  Copyright (c) 2014年 Abeyond. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnalyticsLib : NSObject
+ (void)startAnalytics;
+ (void) logEvent:(NSString*) eventId eventLabel:(NSString*)eventLabel;
+ (void) pageviewStartWithName:(NSString*) name;
+ (void) pageviewEndWithName:(NSString*) name;
@end
