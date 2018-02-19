//
//  LicenceViewController.m
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

#import <Foundation/Foundation.h>
#include "LicenseViewController.h"

@implementation LicenseViewController
-(id)title{
    return @"License";
}
-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:0.51 green:0.53 blue:0.52 alpha:1.0];
    UITextView *textView=[[UITextView alloc] initWithFrame:CGRectMake(0,60,self.view.frame.size.width,self.view.frame.size.height-60)];
    textView.backgroundColor=[UIColor clearColor];
    textView.textColor=[UIColor whiteColor];
    textView.editable=NO;
    NSString *licensePath=[[NSBundle mainBundle] pathForResource:@"License" ofType:@"txt"];
    textView.text=[NSString stringWithContentsOfFile:licensePath encoding:NSUTF8StringEncoding error:NULL];
    [self.view addSubview:textView];
    
}
@end
