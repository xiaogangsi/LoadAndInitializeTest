//
//  MyObjectSuper+superCategory1.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/24.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObjectSuper+superCategory1.h"

@implementation MyObjectSuper (superCategory1)
+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}
@end
