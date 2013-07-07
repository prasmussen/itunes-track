//
//  main.m
//  itunes-track
//
//  Created by Petter Rasmussen on 01.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iTunes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        iTunesApplication *itunes = [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];
        if (![itunes isRunning]) {
            printf("iTunes not running");
            return 0;
        }
        
        iTunesTrack *track = [itunes currentTrack];
        if (!track.name || !track.artist) {
            printf("N/A");
            return 0;
        }
        printf("%s - %s\n", [track.artist UTF8String], [track.name UTF8String]);
        
    }
    return 0;
}

