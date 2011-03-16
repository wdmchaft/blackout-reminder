//
//  DummyBlackoutService.m
//  Blackout
//
//  Created by Francis Chong on 11年3月16日.
//  Copyright 2011年 Ignition Soft Limited. All rights reserved.
//

#import "DummyBlackoutService.h"

@implementation DummyBlackoutService

// when this blackout service being updated
-(NSDate*) lastUpdated {
    return [NSDate dateWithTimeIntervalSinceNow:-3600];
}

// Find list of prefectures
// dummy method always return preset values
-(NSArray*) prefectures {
    return [NSArray arrayWithObjects:@"栃木", @"茨城", @"群馬", @"千葉", @"神奈川", @"東京", @"埼玉", @"山梨", @"静岡", nil];
}

// Find list of cities by prefecture
// dummy method always return preset values
-(NSArray*) cities:(NSString*)prefecture {
    return [NSArray arrayWithObjects:@"国分寺市", @"国立市", @"日野市", @"三鷹市", @"稲城市", @"羽村市", nil];
}

// Find list of street by prefecture and city
// dummy method always return preset values
-(NSArray*) streetsWithPrefecture:(NSString*)prefecture city:(NSString*)city {
    return [NSArray arrayWithObjects:@"緑ケ丘５丁目",
            @"緑ケ丘４丁目",
            @"緑ケ丘３丁目",
            @"緑ケ丘２丁目",
            @"緑ケ丘１丁目",
            @"富士見平３丁目",
            @"富士見平２丁目",
            @"富士見平１丁目",
            @"双葉町３丁目",
            @"双葉町２丁目",
            @"双葉町１丁目",
            @"川崎４丁目",
            @"川崎３丁目",
            @"川崎２丁目",
            @"川崎１丁目",
            @"川崎", 
            nil];
}

// Array of BlackoutPeriod that match the street
// dummy method always return preset values
-(NSArray*) periodWithPrefecture:(NSString*)prefecture city:(NSString*)city street:(NSString*)street {
    BlackoutPeriod* p = [[[BlackoutPeriod alloc] init] autorelease];
    p.fromTime = [NSDate dateWithTimeIntervalSinceNow:3600];
    p.toTime = [NSDate dateWithTimeIntervalSinceNow:7200];
    return [NSArray arrayWithObject:p];
}

@end
