//
//  MyObjectChild1+category1.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/25.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObjectChild1+category1.h"

@implementation MyObjectChild1 (category1)
+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}
@end
