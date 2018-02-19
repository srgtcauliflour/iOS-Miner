//
//  CustomCell.m
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

#include "CustomCell.h"

@implementation CustomCell{
    UIView *customSeparatorView;
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self=[super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]){
        
        UITableViewCell.appearance.backgroundColor=[UIColor clearColor];
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.selectedBackgroundView=[UIView new];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        customSeparatorView=NULL;
        
    }
    return self;
}
-(UILabel *)textLabel{
    
    UILabel *label=[super textLabel];
    CGRect frame=label.frame;
    label.frame=CGRectMake(frame.origin.x,frame.origin.y,self.contentView.frame.size.width-(frame.origin.x*2)-10,frame.size.height);
    return label;
    
}
-(UILabel *)detailTextLabel{
    
    UILabel *label=[super detailTextLabel];
    CGRect frame=label.frame;
    frame.origin.y=self.textLabel.frame.origin.y+self.textLabel.frame.size.height+7;
    frame.size.width=self.contentView.frame.size.width-(frame.origin.x*2)-10;
    label.frame=frame;
    label.font=[UIFont systemFontOfSize:15];
    label.textColor=[[UIColor whiteColor] colorWithAlphaComponent:0.65];
    return label;
    
}
-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    if (self.hasSeparator){
        if (!customSeparatorView){
            customSeparatorView=[[UIView alloc] initWithFrame:CGRectZero];
        }
        customSeparatorView.frame=CGRectMake(20,self.contentView.frame.size.height-0.5,self.frame.size.width-20,1);
        customSeparatorView.backgroundColor=[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.6];
        [self addSubview:customSeparatorView];
    }
    
    CGRect frame=self.textLabel.frame;
    self.textLabel.frame=CGRectMake(frame.origin.x,frame.origin.y,self.contentView.frame.size.width-(frame.origin.x*2)-10,frame.size.height);
    self.textLabel.textColor=[UIColor whiteColor];
    self.textLabel.font=[UIFont systemFontOfSize:20];
    
    frame=self.detailTextLabel.frame;
    frame.origin.y=self.textLabel.frame.origin.y+self.textLabel.frame.size.height+7;
    frame.size.width=self.contentView.frame.size.width-(frame.origin.x*2)-10;
    self.detailTextLabel.frame=frame;
    self.detailTextLabel.font=[UIFont systemFontOfSize:15];
    self.detailTextLabel.textColor=[[UIColor whiteColor] colorWithAlphaComponent:0.65];
    
}
-(void)dealloc{
    
    [customSeparatorView release];
    [super dealloc];
    
}
@end
