//
//  LicenceViewController.m
//  iOS Miner
//
//  Created by Ethan Dye on 1/16/18.
//  Copyright © 2018 Ethan Dye. All rights reserved.
//
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
