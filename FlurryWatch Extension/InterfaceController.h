//
//  InterfaceController.h
//  FlurryWatch Extension
//
//  Created by Yilun Xu on 10/17/18.
//  Copyright © 2018 Flurry. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import <WatchConnectivity/WatchConnectivity.h>

@interface InterfaceController : WKInterfaceController <WCSessionDelegate>
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTimer *timer;

@end
