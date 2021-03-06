//
//  BackgroundTask.m
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
//  Credits - Original Source : https://github.com/yarodevuci/backgroundTask
//

#include "BackgroundTask.h"
#import <AVFoundation/AVFoundation.h>

@interface BackgroundTask ()
@property (nonatomic, retain) AVAudioPlayer* player;
@end

@implementation BackgroundTask

-(void)startBackgroundTask {
    self.player=nil;
    //NSLog(@"BACKGROUND TASK STARTED");
    [[NSNotificationCenter defaultCenter] addObserver:self selector: @selector(interuptedAudio:) name: AVAudioSessionInterruptionNotification object: [AVAudioSession sharedInstance]];
    [self playAudio];
}

-(void) stopBackgroundTask{
    //NSLog(@"BACKGROUND TASK STOPPED");
    [[NSNotificationCenter defaultCenter] removeObserver:self name: AVAudioSessionInterruptionNotification object:nil];
    [self.player stop];
}

-(void) interuptedAudio:(NSNotification*)notification{
    
    //NSLog(@"INTERRRUPTED AUDIO %@",notification);
    if ([notification.name isEqual:AVAudioSessionInterruptionNotification] && notification.userInfo != nil ){
        NSDictionary *info = [notification userInfo];
        int intValue = [[info objectForKey:AVAudioSessionInterruptionTypeKey] intValue];
        if (intValue == 1) {
            [self playAudio];
        }
    }
}

-(void) playAudio{
    
    [self.player release];
    
    NSString *path = [[NSBundle mainBundle] pathForResource: @"empty" ofType: @"wav"];
    NSURL *alertSound = [NSURL fileURLWithPath:path];
    [AVAudioSession.sharedInstance setCategory:AVAudioSessionCategoryPlayback withOptions:AVAudioSessionCategoryOptionMixWithOthers error:NULL];
    NSError *error=NULL;
    [[AVAudioSession sharedInstance] setActive:YES withOptions:0 error:&error];
    if (error){
        NSLog(@"ERROR activating session %@",[error description]);
    }
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:alertSound error:&error];
    if (error){
        NSLog(@"ERROR initializing audioplayer %@",[error description]);
    }
    //self.player.numberOfLoops = -1;
    self.player.numberOfLoops = 1;
    self.player.volume = 0.01;
    [self.player prepareToPlay];
    [self.player play];
    
    [self performSelector:@selector(playAudio) withObject:nil afterDelay:2];
    
}
@end
