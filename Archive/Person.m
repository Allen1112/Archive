//
//  Person.m
//  Archive
//
//  Created by xiaomeng on 2014/3/17.
//  Copyright © 2014年 xiaomeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.sex forKey:@"sex"];
    [aCoder encodeInt:self.age forKey:@"age"];
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    self = [super init];
    if (self) {
        self.name = [coder decodeObjectForKey:@"name"];
        self.sex = [coder decodeObjectForKey:@"sex"];
        self.age = [coder decodeIntForKey:@"age"];
    }
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@,%@,%d",self.name,self.sex,self.age];
}


@end


