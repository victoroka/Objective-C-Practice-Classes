//
//  House.m
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import "House.h"

@interface House()
@property (nonatomic, readwrite) int numberOfBedrooms;
@end

@implementation House

// If the parameter is an object, put an asterix to indicate that it is a pointer
-(instancetype) initWithAddress: (NSString*) address {
    self = [super init];
    
    if (self) {
        // _ is the access to the instance variable
        // This line protects the address from the unnintentional changes
        _address = [address copy];
        _numberOfBedrooms = 3;
        _hasHotTub = false;
    }
    return self;
}

@end
