//
//  MyObject1+category0.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/25.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObject1+category0.h"

@implementation MyObject1 (category0)
+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}
@end
