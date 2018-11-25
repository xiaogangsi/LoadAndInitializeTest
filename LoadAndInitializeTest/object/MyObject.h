//
//  MyObject.h
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/23.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObjectSuper.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyObject : MyObjectSuper <NSObject>

@property (nonatomic, copy)   NSString *name;
@property (nonatomic, assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END
