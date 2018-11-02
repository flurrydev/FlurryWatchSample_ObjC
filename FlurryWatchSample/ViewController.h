//
//  ViewController.h
//  FlurryWatchSample
//
//  Created by Yilun Xu on 10/17/18.
//  Copyright © 2018 Flurry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WatchConnectivity/WatchConnectivity.h>

@interface ViewController : UIViewController <WCSessionDelegate>

- (IBAction)start:(UIButton *)sender;

@end

