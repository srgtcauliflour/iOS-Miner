//
//  MainViewController.h
//  iOS Miner
//
//  Created by Ethan Dye on 1/16/18.
//  Copyright © 2018 Ethan Dye. All rights reserved.
//
//
//  Credits: Orignal Source:https://github.com/limneos/MobileMiner/
//

#include "GrayTableController.h"
#define CONFIGS_KEY @"configurations"

@interface MainViewController : UIViewController
-(void)setConfiguration:(NSDictionary *)conf;
@end

