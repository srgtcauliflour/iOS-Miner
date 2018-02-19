//
//  AddConfigurationViewController.h
//  iOS Miner
//
//  Created by Ethan Dye on 1/16/18.
//  Copyright © 2018 Ethan Dye. All rights reserved.
//
//  This file is part of iOS Miner.
//
//  iOS Miner is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
//  License as published by the Free Software Foundation, either version 3 of the License, or any later version.
//
//  iOS Miner is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
//  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
//  details.
//
//  You should have received a copy of the GNU General Public License along with iOS Miner.  If not, see <http://
//  www.gnu.org/licenses/>.
//
//  Credits: Orignal Source:https://github.com/limneos/MobileMiner/
//

#define CONFIGS_KEY @"configurations"
#import <UIKit/UIKit.h>
@interface AddConfigurationViewController  : UITableViewController <UITableViewDelegate, UITableViewDataSource>
-(id)initWithConfiguration:(NSDictionary *)config;
@end
