//
//  Observer.m
//  Observer
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Observer.h"

@interface Subject ()
@property (strong, nonatomic) NSMutableArray *observers;
@end

@implementation Subject
- (instancetype)init
{
    if (self = [super init]) {
        self.observers = [NSMutableArray new];
    }
    return self;
}

- (void)attach:(Observer *)o
{
    [self.observers addObject:o];
}

- (void)detach:(Observer *)o
{
    [self.observers removeObject:o];
}

- (void)notify
{
    for (Observer *o in self.observers) {
        [o update];
    }
}

@end

@implementation ConcreteSubject
@end

@implementation Observer
- (void)update
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteObserver
- (instancetype)initWithSubject:(ConcreteSubject *)subject name:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
        self.subject = subject;
    }
    return self;
}

- (void)update
{
    printf("%s has been notified by change: %s\n", [self.name UTF8String], [self.subject.state UTF8String]);
}

@end