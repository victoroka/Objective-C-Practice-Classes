//
//  RPSController.m
//  ObjCClasses
//
//  Created by Victor Oka on 31/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move) playersMove {
    // In objc, "call a method" = "send a message", and the syntax is [receiver message:argument]
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    // The RPSGame class stores the results of the game
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

-(NSString*) resultsString:(RPSGame*)game {
    if ([game.firstTurn defeats:game.secondTurn]) {
        return @"You win!";
    } else {
        return @"You lose.";
    }
}

-(NSString*)messageForGame:(RPSGame*)game {
    // Handle the tie
    if (game.firstTurn == game.secondTurn) {
        return @"It's a tie.";
    }
    
    // Check each player's moves
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game loser] description];
    // Build the String to describe the game
    NSString *wholeString =  [NSString stringWithFormat:@"%@ defeats %@!", winnerString, loserString];
    
    return wholeString;
    
}

@end
