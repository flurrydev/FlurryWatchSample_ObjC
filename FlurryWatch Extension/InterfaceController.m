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

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



