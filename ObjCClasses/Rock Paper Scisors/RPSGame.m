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

@end
