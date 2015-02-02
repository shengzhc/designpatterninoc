//
//  FactoryMethod.m
//  FactoryMethod
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "FactoryMethod.h"

@implementation AbstractProduct
- (NSString *)description
{
    return self.className;
}
@end

@implementation ConcreteProductA
@end

@implementation ConcreteProductB
@end

@implementation AbstractCreator
- (AbstractProduct *)createProduct
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}
@end

@implementation ConcreteCreatorA
- (AbstractProduct *)createProduct
{
    return [[ConcreteProductA alloc] init];
}
@end

@implementation ConcreteCreatorB
- (AbstractProduct *)createProduct
{
    return [[ConcreteProductB alloc] init];
}
@end

