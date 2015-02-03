//
//  Template.m
//  Template
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Template.h"

@implementation AbstractClass
- (void)templateMethod
{
    [self primitiveMethod1];
    [self primitiveMethod2];
}

- (void)primitiveMethod1
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

- (void)primitiveMethod2
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

@end

@implementation ConcreteClassA

- (void)primitiveMethod1
{
    printf("%s.%s\n", [self.className UTF8String], [NSStringFromSelector(_cmd) UTF8String]);
}

- (void)primitiveMethod2
{
    printf("%s.%s\n", [self.className UTF8String], [NSStringFromSelector(_cmd) UTF8String]);
}

@end

@implementation ConcreteClassB

- (void)primitiveMethod1
{
    printf("%s.%s\n", [self.className UTF8String], [NSStringFromSelector(_cmd) UTF8String]);
}

- (void)primitiveMethod2
{
    printf("%s.%s\n", [self.className UTF8String], [NSStringFromSelector(_cmd) UTF8String]);
}

@end