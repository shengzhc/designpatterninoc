//
//  State.m
//  State
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "State.h"

@implementation Context
- (void)request
{
    [self.state handle:self];
}

- (void)setState:(State *)state
{
    _state = state;
    if (_state) {
        printf("State: %s\n", [self.state.className UTF8String]);
    }
}
@end


@implementation State
- (void)handle:(Context *)context
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteStateA
- (void)handle:(Context *)context
{
    context.state = [[ConcreteStateB alloc] init];
}
@end

@implementation ConcreteStateB
- (void)handle:(Context *)context
{
    context.state = [[ConcreteStateA alloc] init];
}
@end