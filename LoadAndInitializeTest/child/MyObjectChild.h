//
//  MyObjectChild.h
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/23.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyObjectChild : MyObject <NSObject>

@property (nonatomic, copy)   NSString *nameChild;
@property (nonatomic, assign) NSInteger ageChild;

@end

NS_ASSUME_NONNULL_END
