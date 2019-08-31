//
//  RPSGame.h
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

// The method is composed by:
// the - tells us that this is an instance method
// next we have the type of the return
// the method name followed by a :
// the parameter type between () followed by it's name
// the method body between {}
// the * represents the pointer to the object
// (there's no need if it's a raw type like Integer)
-(instancetype) initWithFirstTurn: (RPSTurn*) playerTurn
                       secondTurn: (RPSTurn*) computerTurn;

@end

NS_ASSUME_NONNULL_END
