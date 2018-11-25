//
//  MyObject+category1.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/25.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObject+category1.h"

@implementation MyObject (category1)
//+ (void)initialize {
//    NSLog(@"%s",__FUNCTION__);
//}

+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}
@end
