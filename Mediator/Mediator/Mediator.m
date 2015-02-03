//
//  Mediator.m
//  Mediator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Mediator.h"

@implementation Colleague
@end

@implementation Mediator
@end

@implementation ConcreteColleague
- (void)send:(NSString *)message
{
    printf("Sending %s\n", [message UTF8String]);
    [self.mediator send:message colleague:self];
}

- (void)notify:(NSString *)message
{
    printf("Receiving %s\n", [message UTF8String]);
}

@end

@implementation ConcreteMediator
- (void)send:(NSString *)message colleague:(ConcreteColleague *)colleague
{
    if (colleague == self.colleagueA) {
        [self.colleagueB notify:message];
    } else {
        [self.colleagueA notify:message];
    }
}

@end
