//
//  InterfaceController.m
//  FlurryWatch Extension
//
//  Created by Yilun Xu on 10/17/18.
//  Copyright © 2018 Flurry. All rights reserved.
//

#import "InterfaceController.h"
#import "Flurry.h"
#import "FlurryWatch.h"
#import <WatchKit/WatchKit.h>

@interface InterfaceController ()

@end


@implementation InterfaceController 
@synthesize timer;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    if ([WCSession isSupported]) {
        WCSession *session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }

    // Configure interface objects here.
}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *,id> *)message {
    for(NSString *key in [message allKeys]) {
        NSLog(@"%@",[message objectForKey:key]);
    }
    [timer setDate:[NSDate dateWithTimeIntervalSinceNow:0]];
    [timer start];
    [FlurryWatch logWatchEvent:@"Started_Timer_Watch"];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)session:(nonnull WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState error:(nullable NSError *)error {
    
}

@end



