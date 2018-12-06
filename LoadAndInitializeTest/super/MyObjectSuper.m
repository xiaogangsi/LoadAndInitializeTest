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
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [MyObjectSuper methodSwizzlingWithOriginalSelector:NSSelectorFromString(@"dealloc") bySwizzledSelector:@selector(deallocSwizzle)];
    });
    NSLog(@"%s",__FUNCTION__);
}

//-(void)dealloc {
//    NSLog(@"%s",__FUNCTION__);
//}

- (void)deallocSwizzle
{
     NSLog(@"%s",__FUNCTION__);
    [self deallocSwizzle];
}

+ (void)methodSwizzlingWithOriginalSelector:(SEL)originalSelector bySwizzledSelector:(SEL)swizzledSelector{
    Class class = [self class];
    //原有方法
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    //替换原有方法的新方法
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    //先尝试給源SEL添加IMP，这里是为了避免源SEL没有实现IMP的情况
    BOOL didAddMethod = class_addMethod(class,originalSelector,
                                        method_getImplementation(swizzledMethod),
                                        method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {//添加成功：说明源SEL没有实现IMP，将源SEL的IMP替换到交换SEL的IMP
        class_replaceMethod(class,swizzledSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {//添加失败：说明源SEL已经有IMP，直接将两个SEL的IMP交换即可
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}


@end
