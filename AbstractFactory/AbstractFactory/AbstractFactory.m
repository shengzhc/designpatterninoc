//
//  AbstractFactory.m
//  AbstractFactory
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "AbstractFactory.h"

@implementation AbstractProductA
- (NSString *)description
{
    return [self className];
}
@end

@implementation AbstractProductB
- (NSString *)description
{
    return [self className];
}
@end

@implementation AbstractFactory

- (AbstractProductA *)createProductA
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}

- (AbstractProductB *)createProductB
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}

- (void)run
{
    NSLog(@"%@ is creating ProductA and Product B...", self);
    
    AbstractProductA *productA = [self createProductA];
    AbstractProductB *productB = [self createProductB];
    
    NSLog(@"%@ has created:", self);
    NSLog(@"%@", productA);
    NSLog(@"%@", productB);
}

- (NSString *)description
{
    return [self className];
}

@end

