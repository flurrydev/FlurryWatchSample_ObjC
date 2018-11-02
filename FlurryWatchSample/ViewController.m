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
        NSLog(@"WCSession is supported");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)start:(UIButton *)sender {
    NSLog(@"something");
    [session sendMessage:@{@"start_button_pressed" : @"yes"} replyHandler:nil errorHandler:nil];
    [Flurry logEvent:@"Time_Reset_Pressed"];
}
- (void)session:(nonnull WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState error:(nullable NSError *)error {
}

- (void)sessionDidDeactivate:(WCSession *)session {}

- (void)sessionDidBecomeInactive:(WCSession *)session{}


@end
