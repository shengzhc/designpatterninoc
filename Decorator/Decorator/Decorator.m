//
//  Decorator.m
//  Decorator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Decorator.h"

@implementation AbstractComponent
- (void)operate
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteComponent
- (void)operate
{
    printf("ConcreteCompoent is operating\n");
}
@end

@implementation Decorator
- (void)operate
{
    [self.component operate];
}
@end

@implementation ConcreteDecoratorA

- (void)operate
{
    printf("ConcreteDecoratorA is operating\n");
    [super operate];
}

@end

@implementation ConcreteDecoratorB

- (void)operate
{
    printf("ConcreteDecoratorB is operating\n");
    [super operate];
}

@end
