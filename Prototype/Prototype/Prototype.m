//
//  Prototype.m
//  Prototype
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Prototype.h"

@implementation Prototype

- (Prototype *)clone
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}

@end

@implementation ConcretePrototype1

- (Prototype *)clone
{
    ConcretePrototype1 *c = [[ConcretePrototype1 alloc] init];
    c.cloneId = self.cloneId;
    return c;
}

@end

@implementation ConcretePrototype2

- (Prototype *)clone
{
    ConcretePrototype2 *c = [[ConcretePrototype2 alloc] init];
    c.cloneId = self.cloneId;
    return c;
}

@end