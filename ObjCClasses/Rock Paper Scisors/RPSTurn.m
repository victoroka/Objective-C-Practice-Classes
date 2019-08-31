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

-(Move) generateMove {
    return Rock;
}

-(BOOL) defeats:(RPSTurn *) turn {
    return false;
}

@end
