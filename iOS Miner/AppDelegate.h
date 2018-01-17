//
//  AppDelegate.h
//  iOS Miner
//
//  Created by Ethan Dye on 1/16/18.
//  Copyright © 2018 Ethan Dye. All rights reserved.
//
//
//  Credits: Orignal Source:https://github.com/limneos/MobileMiner/
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (assign, nonatomic) UIBackgroundTaskIdentifier bgTask;
@property (assign, nonatomic) BOOL background;
@property (assign, nonatomic) BOOL sentNotification;
@property (strong, nonatomic) dispatch_block_t expirationHandler;
@property (assign, nonatomic) BOOL jobExpired;
@property (strong, nonatomic) NSUserDefaults* userDefaults;
@property (assign) BOOL isMining;

@end

