//
//  LogViewController.h
//  iOS Miner
//
//  Created by Ethan Dye on 1/16/18.
//  Copyright © 2018 Ethan Dye. All rights reserved.
//
//
//  Credits: Orignal Source:https://github.com/limneos/MobileMiner/
//

#import <UIKit/UIKit.h>
#include <dlfcn.h>

int start_mining(int argc,char *argv[]);

@interface LogViewController : UIViewController
-(void)startMining;
-(void)stopMining;
@end
