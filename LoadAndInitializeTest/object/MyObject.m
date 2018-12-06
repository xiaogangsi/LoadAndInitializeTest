//
//  MyObject.m
//  LoadAndInitializeTest
//
//  Created by sixiaogang on 2018/11/23.
//  Copyright © 2018年 司晓刚. All rights reserved.
//

#import "MyObject.h"
#import <objc/runtime.h>
#import "MyObjectChild.h"


@implementation MyObject{
    int nIval;//第一处增加
}

//+ (void)initialize {
//    NSLog(@"%s",__FUNCTION__);
//}

//+ (void)initialize {
//    if (self == [MyObject class]) {
//         NSLog(@"%s",__FUNCTION__);
//    }
//}

+ (void)load {
    NSLog(@"%s",__FUNCTION__);
}

//+ (void)load {
//    NSLog(@"%s",__FUNCTION__);
//
//    //第二次增加
//    NSLog(@"-1.---------------------------------华丽的风格下------------------------------------");
//    unsigned int count = 0;
//    Class metaClass = object_getClass([MyObject class]);
//    Method *methods = class_copyMethodList(metaClass, &count);
//    for (int i = 0; i < count; i++) {
//        NSLog(@"类方法为：%s", sel_getName(method_getName(methods[i])));
//    }
//    free(methods);
//
//    NSLog(@"-2.---------------------------------华丽的风格下------------------------------------");
//    unsigned int countMethod = 0;
//    methods = class_copyMethodList([self class], &countMethod);
//    for (int i = 0; i < countMethod; i++) {
//        NSLog(@"实例方法为：%s", sel_getName(method_getName(methods[i])));
//    }
//    free(methods);
//
//    NSLog(@"-3.---------------------------------华丽的风格下------------------------------------");
//    unsigned int countIval = 0;
//    Ivar *ivals = class_copyIvarList([self class], &countIval);
//    for (int i = 0; i < countIval; i++) {
//        NSLog(@"变量为：%s", ivar_getName(ivals[i]));
//    }
//    free(ivals);
//
//    NSLog(@"-4.---------------------------------华丽的风格下------------------------------------");
//    unsigned int countProperty = 0;
//    objc_property_t *propertys = class_copyPropertyList([self class], &countProperty);
//    for (int i = 0; i < countProperty; i++) {
//        NSLog(@"属性为：%s", property_getName(propertys[i]));
//    }
//    free(propertys);
//
//    NSLog(@"-5.---------------------------------华丽的风格下------------------------------------");
//    unsigned int countProtocol = 0;
//    __unsafe_unretained Protocol **protocols = class_copyProtocolList([self class], &countProtocol);
//    for (int i = 0; i < countProtocol; i++) {
//        NSLog(@"协议为：%s", protocol_getName(protocols[i]));
//    }
//    NSLog(@"----------------------------------华丽的风格下------------------------------------");
//    MyObject *myObject = [[MyObject alloc] init];
//    myObject.age = 18;
//    myObject.name = @"司晓刚";
//    NSLog(@"myObject.name=%@,myObject.age=%ld",myObject.name, myObject.age);
//
//    NSLog(@"----------------------以下是子类华丽的分割线--------------------------------");
//
//
//    NSLog(@"-1.------------------------华丽的风格下Child------------------------------------");
//    MyObjectChild *myObjectChild = [[MyObjectChild alloc] init];
//    myObjectChild.age = 18;
//    myObjectChild.name = @"司晓刚";
//    NSLog(@"myObjectChild.name=%@,myObjectChild.age=%ld",myObjectChild.name, myObjectChild.age);
//
//
//    count = 0;
//    metaClass = object_getClass([MyObjectChild class]);
//    methods = class_copyMethodList(metaClass, &count);
//    for (int i = 0; i < count; i++) {
//        NSLog(@"Child类方法为：%s", sel_getName(method_getName(methods[i])));
//    }
//    free(methods);
//
//    NSLog(@"-2.-------------------------华丽的风格下Child------------------------------------");
//    countMethod = 0;
//    methods = class_copyMethodList([myObjectChild class], &countMethod);
//    for (int i = 0; i < countMethod; i++) {
//        NSLog(@"Child实例方法为：%s", sel_getName(method_getName(methods[i])));
//    }
//    free(methods);
//
//    NSLog(@"-3.-------------------------华丽的风格下Child------------------------------------");
//    countIval = 0;
//    ivals = class_copyIvarList([myObjectChild class], &countIval);
//    for (int i = 0; i < countIval; i++) {
//        NSLog(@"Child变量为：%s", ivar_getName(ivals[i]));
//    }
//    free(ivals);
//
//    NSLog(@"-4.-------------------------华丽的风格下Child------------------------------------");
//    countProperty = 0;
//    propertys = class_copyPropertyList([myObjectChild class], &countProperty);
//    for (int i = 0; i < countProperty; i++) {
//        NSLog(@"Child属性为：%s", property_getName(propertys[i]));
//    }
//    free(propertys);
//
//    NSLog(@"-5.-------------------------华丽的风格下Child------------------------------------");
//    countProtocol = 0;
//    protocols = class_copyProtocolList([myObjectChild class], &countProtocol);
//    for (int i = 0; i < countProtocol; i++) {
//        NSLog(@"Child协议为：%s", protocol_getName(protocols[i]));
//    }
//    NSLog(@"---------------------------华丽的风格下Child------------------------------------");
//
//}

-(void)objectFunction {//第三处增加
    NSLog(@"%s",__FUNCTION__);
}

+ (void)classFunction {//第四处增加
    NSLog(@"%s",__FUNCTION__);
}


//+ (void)load {
////    [super load];
//    NSLog(@"%s",__FUNCTION__);
//}

@end
