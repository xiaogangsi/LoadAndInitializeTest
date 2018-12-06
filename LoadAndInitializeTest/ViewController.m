//
//  ViewController.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/23.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "ViewController.h"
#import "MyObject.h"
#import "MyObjectChild.h"
#import "MyObjectSuper.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[MyObjectSuper alloc] init];
    
    NSLog(@"[[MyObjectChild alloc] init]; 之前");
    [[MyObject alloc] init];
    NSLog(@"[[MyObjectChild alloc] init]; 之后");
}


@end
