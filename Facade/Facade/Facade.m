//
//  Facade.m
//  Facade
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Facade.h"

@implementation SubSystemA
- (void)methodA
{
    printf("SubSystemA MethodA\n");
}
@end

@implementation SubSystemB
- (void)methodB
{
    printf("SubSystemB MethodB\n");
}
@end

@implementation SubSystemC
- (void)methodC
{
    printf("SubSystemC MethodC\n");
}
@end

@implementation SubSystemD
- (void)methodD
{
    printf("SubSystemD MethodD\n");
}
@end


@interface Facade ()
@property (strong, nonatomic) SubSystemA *a;
@property (strong, nonatomic) SubSystemB *b;
@property (strong, nonatomic) SubSystemC *c;
@property (strong, nonatomic) SubSystemD *d;
@end

@implementation Facade
- (instancetype)init
{
    if (self = [super init]) {
        self.a = [SubSystemA new];
        self.b = [SubSystemB new];
        self.c = [SubSystemC new];
        self.d = [SubSystemD new];
    }
    return self;
}

- (void)methodOne
{
    printf("MethodOne---------------\n");
    [self.a methodA];
    [self.b methodB];
    [self.d methodD];
}

- (void)methodTwo
{
    printf("MethodTwo---------------\n");
    [self.b methodB];
    [self.c methodC];
}

@end
