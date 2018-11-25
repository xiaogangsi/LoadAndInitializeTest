//
//  MyObjectChild.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/23.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObjectChild.h"

@implementation MyObjectChild{
    int nIvalChild;
}

- (instancetype)init {
    NSLog(@"init");
    if (self = [super init]) {
    }
    return self;
}

+ (void)initialize {
    [super initialize];
    
    NSLog(@"%s",__FUNCTION__);
}

+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}

-(void)objectFunctionChild {
    NSLog(@"%s",__FUNCTION__);
}

+ (void)classFunctionChild {
    NSLog(@"%s",__FUNCTION__);
}

//+ (void)load {
//    NSLog(@"%s",__FUNCTION__);
//}

@end
