//
//  AnalyticsLib.m
//  HuiCat
//
//  Created by Kalicy on 14-7-2.
//  Copyright (c) 2014年 Abeyond. All rights reserved.
//

#import "AnalyticsLib.h"
#import "BaiduMobStat.h"
#import "Adsupport/ASIdentifierManager.h"

@implementation AnalyticsLib
+ (void)startAnalytics {
    BaiduMobStat* statTracker = [BaiduMobStat defaultStat];
    statTracker.enableExceptionLog = YES; // 是否允许截获并发送崩溃信息，请设置YES或者NO
    statTracker.logStrategy = BaiduMobStatLogStrategyAppLaunch;//根据开发者设定的时间间隔接口发送 也可以使用启动时发送策略
    statTracker.enableDebugOn = YES; //打开调试模式，发布时请去除此行代码或者设置为False即可。
    //    statTracker.logSendInterval = 1; //为1时表示发送日志的时间间隔为1小时,只有 statTracker.logStrategy = BaiduMobStatLogStrategyAppLaunch这时才生效。
    statTracker.logSendWifiOnly = NO; //是否仅在WIfi情况下发送日志数据
    statTracker.sessionResumeInterval = 1;//设置应用进入后台再回到前台为同一次session的间隔时间[0~600s],超过600s则设为600s，默认为30s
    
    NSString *adId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    statTracker.adid = adId;
    
    [statTracker startWithAppId:@"28c8325e7b"];//设置您在mtj网站上添加的app的appkey
}

+ (void) logEvent:(NSString*) eventId eventLabel:(NSString*)eventLabel {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel:eventLabel];
}

+ (void) pageviewStartWithName:(NSString*) name {
    [[BaiduMobStat defaultStat] pageviewStartWithName:name];
}

+ (void) pageviewEndWithName:(NSString*) name {
    
    [[BaiduMobStat defaultStat] pageviewEndWithName:name];
}

@end
