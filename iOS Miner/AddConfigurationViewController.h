//
//  AddConfigurationViewController.h
//  iOS Miner
//
//  Created by Ethan Dye on 1/16/18.
//  Copyright © 2018 Ethan Dye. All rights reserved.
//
//
//  Credits: Orignal Source:https://github.com/limneos/MobileMiner/
//

#define CONFIGS_KEY @"configurations"
#import <UIKit/UIKit.h>
@interface AddConfigurationViewController  : UITableViewController <UITableViewDelegate, UITableViewDataSource>
-(id)initWithConfiguration:(NSDictionary *)config;
@end
