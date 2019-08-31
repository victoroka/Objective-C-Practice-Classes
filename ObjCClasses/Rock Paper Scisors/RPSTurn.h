//
//  RPSTurn.h
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scisors,
    Invalid
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype) initWithMove:(Move) move;
-(Move) generateMove;
-(BOOL) defeats:(RPSTurn*) opponent;
-(NSString*) description;

@end

NS_ASSUME_NONNULL_END
