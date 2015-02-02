//
//  ChainOfResponsibility.m
//  ChainofResponsibility
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "ChainOfResponsibility.h"

@implementation Handler
- (void)handleRequest:(NSInteger)request
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteHandlerA
- (void)handleRequest:(NSInteger)request
{
    if (request <= 10) {
        printf("ConcreteHandlerA handles request\n");
    } else {
        printf("ConcreteHandlerA Passed request\n");
        [self.successor handleRequest:request];
    }
}
@end

@implementation ConcreteHandlerB
- (void)handleRequest:(NSInteger)request
{
    if (request <= 20) {
        printf("ConcreteHandlerB handles request\n");
    } else {
        printf("ConcreteHandlerB Passed request\n");
        [self.successor handleRequest:request];
    }
}

@end

@implementation ConcreteHandlerC
- (void)handleRequest:(NSInteger)request
{
    if (request <= 30) {
        printf("ConcreteHandlerC handles request\n");
    } else {
        printf("ConcreteHandlerC Passed request\n");
        [self.successor handleRequest:request];
    }
}

@end