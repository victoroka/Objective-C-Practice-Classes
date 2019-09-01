//
//  RPSController.h
//  ObjCClasses
//
//  Created by Victor Oka on 31/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void) throwDown:(Move) playersMove;
-(NSString*)messageForGame:(RPSGame*)game;

@end

NS_ASSUME_NONNULL_END
