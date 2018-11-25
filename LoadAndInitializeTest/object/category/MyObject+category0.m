//
//  MyObject+category0.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/25.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObject+category0.h"

@implementation MyObject (category0)
+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}
//+ (void)initialize {
//    NSLog(@"%s",__FUNCTION__);
//}
@end
