//
//  Iterator.m
//  Iterator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Iterator.h"

@interface ConcreteIterator ()
@property (assign, nonatomic) NSUInteger index;
@property (strong, nonatomic) ConcreteAggregate *aggregate;
@end

@implementation ConcreteAggregate
- (id)init
{
    if (self = [super init]) {
        self.list = [NSMutableArray new];
    }
    return self;
}

- (Iterator *)createIterator
{
    ConcreteIterator *ci = [[ConcreteIterator alloc] init];
    ci.aggregate = self;
    return ci;
}

@end


@implementation ConcreteIterator
- (id)first
{
    if (self.aggregate.list.count > 0) {
        return self.aggregate.list[0];
    }
    return nil;
}

- (void)next
{
    if (self.aggregate.list.count >= self.index+1) {
        self.index += 1;
    }
}

- (BOOL)isDone
{
    return self.aggregate.list.count <= self.index;
}

- (id)currentItem
{
    return self.aggregate.list[self.index];
}

@end

@implementation Aggregate
- (Iterator *)createIterator
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}
@end

@implementation Iterator
- (id)first
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}

- (void)next
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

- (BOOL)isDone
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return NO;
}

- (id)currentItem
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}

@end
