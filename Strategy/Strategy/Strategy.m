//
//  Strategy.m
//  Strategy
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Strategy.h"

@implementation Strategy
- (void)strategyInterface
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteStrategyA
- (void)strategyInterface
{
    printf("Calling ConcreteStrategyA's Interface\n");
}
@end

@implementation ConcreteStrategyB
- (void)strategyInterface
{
    printf("Calling ConcreteStrategyB's Interface\n");
}
@end

@implementation ConcreteStrategyC
- (void)strategyInterface
{
    printf("Calling ConcreteStrategyC's Interface\n");
}
@end

@implementation Context

- (void)contextInterface
{
    [self.s strategyInterface];
}
@end
