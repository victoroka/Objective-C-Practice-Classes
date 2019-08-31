//
//  RPSGame.m
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype) initWithFirstTurn:(RPSTurn *)playerTurn secondTurn:(RPSTurn *)computerTurn {
    self = [super init];
    
    if (self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    return self;
}

-(RPSTurn*) winner {
    return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*) loser {
    return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}
@end
