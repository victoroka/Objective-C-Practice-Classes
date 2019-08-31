//
//  RPSTurn.m
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

// The method is composed by:
// the - tells us that this is an instance method
// next we have the type of the return
// the method name followed by a :
// the parameter type between () followed by it's name
// the method body between {}
-(instancetype) initWithMove:(Move) move {
    self = [super init];
    
    if (self) {
        _move = move;
    }
    return self;
}

-(instancetype) init {
    self = [super init];
    
    if (self) {
        _move = [self generateMove];
    }
    return self;
}

-(Move) generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    
    // Objc switches can only handle Integers
    // and require a default case
    switch (randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scisors;
            break;
        default:
            return Invalid;
            break;
    }
}

-(BOOL) defeats:(RPSTurn *) opponent {
    if ((self.move == Paper && opponent.move == Rock) ||
        (self.move == Scisors && opponent.move == Paper) ||
        (self.move == Rock && opponent.move == Scisors)) {
        return true;
    } else {
        return false;
    }
}

-(NSString*) description {
    if (self.move == Rock) {
        return @"Rock";
    } else if (self.move == Paper) {
        return @"Paper";
    } else if (self.move == Scisors) {
        return @"Scisors";
    } else {
        return @"Invalid move!";
    }
}

@end
