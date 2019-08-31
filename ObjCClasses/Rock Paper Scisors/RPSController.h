//
//  RPSController.h
//  ObjCClasses
//
//  Created by Victor Oka on 31/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

-(void) throwDown:(Move) playersMove;

@end

NS_ASSUME_NONNULL_END
