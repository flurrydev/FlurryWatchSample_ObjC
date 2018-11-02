//
//  ViewController.m
//  FlurryWatchSample
//
//  Created by Yilun Xu on 10/17/18.
//  Copyright © 2018 Flurry. All rights reserved.
//

#import "ViewController.h"
#import "Flurry.h"

@interface ViewController () {
    WCSession *session;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([WCSession isSupported]) {
        session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)start:(UIButton *)sender {
    NSLog(@"something");
    [session sendMessage:@{@"start_button_pressed" : @"yes"} replyHandler:nil errorHandler:nil];
    FlurryEventRecordStatus status = [Flurry logEvent:@"Time_Reset_Pressed"];
    NSLog(@"%@", [self stringForEventRercordStatus:status]);
}
- (void)session:(nonnull WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState error:(nullable NSError *)error {
}

- (void)sessionDidDeactivate:(WCSession *)session {}

- (void)sessionDidBecomeInactive:(WCSession *)session{}

-(NSString *)stringForEventRercordStatus:(FlurryEventRecordStatus)status {
    switch(status) {
        case FlurryEventFailed:
            return @"Log Event Failed";
        case FlurryEventRecorded:
            return @"Log Event Recorded";
        case FlurryEventUniqueCountExceeded:
            return @"Log Event Unique Count Exceeded";
        case FlurryEventParamsCountExceeded:
            return @"Log Event Params Count Exceeded";
        case FlurryEventLogCountExceeded:
            return @"Log Event Count Exceeded";
        case FlurryEventLoggingDelayed:
            return @"Log Event Delayed";
        case FlurryEventAnalyticsDisabled:
            return @"Log Event Analytics Disabled";
    }
}


@end
