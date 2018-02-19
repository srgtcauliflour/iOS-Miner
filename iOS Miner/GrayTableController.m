//
//  GrayTableController.m
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

#include "GrayTableController.h"
#include "CustomCell.h"

@implementation GrayTableController
-(void)loadView{
    
    self.tableView=[[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.backgroundColor=[UIColor colorWithRed:0.51 green:0.53 blue:0.52 alpha:1.0];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}
-(id)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath  {
    
    NSString *REUSEID = [NSString stringWithFormat:@"ACELL-%d-%d",(int)indexPath.section,(int)indexPath.row];
    CustomCell *cell=[tableView dequeueReusableCellWithIdentifier:REUSEID];
    
    if (!cell){
        cell=[[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:REUSEID];
    }
    return (UITableViewCell *)cell;
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[self tableView] reloadData];
}
@end
