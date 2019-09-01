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

-(NSString*)messageForGame:(RPSGame*)game {
    NSMutableString *resultString = [[NSMutableString alloc]init];
    // Handle the tie
    if ([game.firstTurn defeats:game.secondTurn]) {
        [resultString appendString:@"You win!"];
    } else if (game.firstTurn == game.secondTurn) {
        [resultString appendString:@"It's a tie."];
    } else {
        [resultString appendString:@"You lose..."];
    }
    
    // Check each player's moves
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game loser] description];
    // Build the String to describe the game
    NSString *wholeString =  [NSString stringWithFormat:@"%@\n%@ defeats %@!", resultString, winnerString, loserString];
    
    return wholeString;
    
}

@end
