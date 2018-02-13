//
//  ViewController.m
//  Archive
//
//  Created by xiaomeng on 2014/3/17.
//  Copyright © 2014年 xiaomeng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    Person *person = [[Person alloc] init];
    person.name = @"xiaomeng";
    person.sex = @"男";
    person.age = 17;
    
    //路径
    NSString *path = [NSHomeDirectory() stringByAppendingString:@"person.plist"];
    
    //归档
    [NSKeyedArchiver archiveRootObject:person toFile:path];
    //解档
    person = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"%@",person);//xiaomeng,男,17
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
