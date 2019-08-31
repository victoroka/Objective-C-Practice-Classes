//
//  Book.h
//  ObjCClasses
//
//  Created by Victor Oka on 27/08/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *author;
@property (nonatomic) int yearOfPublication;

-(instancetype) initWithTitle: (NSString*)title
                       author: (NSString*)author
                         year: (int)year;

@end

NS_ASSUME_NONNULL_END
