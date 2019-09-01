//
//  main.m
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialize an instance of RPSController
        RPSController *gameController = [[RPSController alloc]init];
        
        // Send the message throwDown: to the game controller you just created
        [gameController throwDown:Rock];
        // Call the method, messageForGame: using the gameController you just created
        // Assign the return value of messageForGame: to the resultsMessage string
        NSString *reportMessage = [gameController messageForGame:gameController.game];
        NSLog(@"%@", reportMessage);
    }
    return 0;
}
