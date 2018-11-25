//
//  MyObjectSuper.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/23.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObjectSuper.h"
#import <objc/runtime.h>

@implementation MyObjectSuper

//+ (void)initialize {
//    NSLog(@"%s",__FUNCTION__);
//}

+ (void)load
{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        NSLog(@"%s",__FUNCTION__);
//        Method method1 = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
//        Method method2 = class_getInstanceMethod([self class], @selector(deallocSwizzle));
//        method_exchangeImplementations(method1, method2);
//    });
    NSLog(@"%s",__FUNCTION__);
}

//-(void)dealloc {
//    NSLog(@"%s",__FUNCTION__);
//}
//
//- (void)deallocSwizzle
//{
//     NSLog(@"%s",__FUNCTION__);
//    [self deallocSwizzle];
//}

@end
