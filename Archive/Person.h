//
//  Person.h
//  Archive
//
//  Created by xiaomeng on 2014/3/17.
//  Copyright © 2014年 xiaomeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

//姓名
@property (nonatomic,copy) NSString *name;
//性别
@property (nonatomic,copy) NSString *sex;
//年龄
@property (nonatomic,assign) int age;

@end
