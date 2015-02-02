//
//  Bridge.m
//  Bridge
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Bridge.h"

@implementation Implementor
- (void)implement
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation Abstraction
- (void)operate
{
    [self.implementor implement];
}
@end

@implementation RefineAbstraction
- (void)operate
{
    printf("RefineAbstraction operating\n");
    [self.implementor implement];
}
@end

@implementation ConcreteImplementorA
- (void)implement
{
    printf("ConcreateImplementorA implementing\n");
}
@end

@implementation ConcreteImplementorB
- (void)implement
{
    printf("ConcreateImplementorB implementing\n");
}
@end
