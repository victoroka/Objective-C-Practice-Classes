//
//  House.h
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bedroom.h"

NS_ASSUME_NONNULL_BEGIN

@interface House : NSObject

@property (nonatomic, copy) NSString *address;
@property (nonatomic, readonly) int numberOfBedrooms;
@property (nonatomic) BOOL hasHotTub;

// Pointers are strong by default (but some teams make it extra explicit)
@property (nonatomic, strong) Bedroom *frontBedroom;
@property (nonatomic, strong) Bedroom *backBedroom;

@end

NS_ASSUME_NONNULL_END
