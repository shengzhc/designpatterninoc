//
//  ConcreteFactory.m
//  AbstractFactory
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "ConcreteFactory.h"

@implementation ConcreteProductA1
@end

@implementation ConcreteProductA2
@end

@implementation ConcreteProductB1
@end

@implementation ConcreteProductB2
@end


@implementation ConcreteFactory1

- (AbstractProductA *)createProductA
{
    return [[ConcreteProductA1 alloc] init];
}

- (AbstractProductB *)createProductB
{
    return [[ConcreteProductB1 alloc] init];
}
@end


@implementation ConcreteFactory2

- (AbstractProductA *)createProductA
{
    return [[ConcreteProductA2 alloc] init];
}

- (AbstractProductB *)createProductB
{
    return [[ConcreteProductB2 alloc] init];
}
@end
