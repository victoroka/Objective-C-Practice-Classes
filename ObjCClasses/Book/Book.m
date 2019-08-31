//
//  Book.m
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import "Book.h"

@implementation Book

-(instancetype) initWithTitle:(NSString *)title
                       author:(NSString *)author
                         year:(int)year {
    self = [super init];
    if (self) {
        _title = title;
        _author = author;
        _yearOfPublication = year;
    }
    
    return self;
}

@end
