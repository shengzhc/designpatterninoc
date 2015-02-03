//
//  Visitor.m
//  Visitor
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Visitor.h"

@implementation Visitor

- (void)visitConcreteElementA:(ConcreteElementA *)e
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

- (void)visitConcreteElementB:(ConcreteElementB *)e
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

@end

@implementation ConcreteVisitorA
- (void)visitConcreteElementA:(ConcreteElementA *)e
{
    printf("%s is visiting %s\n", [self.className UTF8String], [e.className UTF8String]);
}

- (void)visitConcreteElementB:(ConcreteElementB *)e
{
    printf("%s is visiting %s\n", [self.className UTF8String], [e.className UTF8String]);
}
@end

@implementation ConcreteVisitorB
- (void)visitConcreteElementA:(ConcreteElementA *)e
{
    printf("%s is visiting %s\n", [self.className UTF8String], [e.className UTF8String]);
}

- (void)visitConcreteElementB:(ConcreteElementB *)e
{
    printf("%s is visiting %s\n", [self.className UTF8String], [e.className UTF8String]);
}
@end

@implementation Element
- (void)accept:(Visitor *)v
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteElementA
- (void)accept:(Visitor *)v
{
    [v visitConcreteElementA:self];
}
@end

@implementation ConcreteElementB
- (void)accept:(Visitor *)v
{
    [v visitConcreteElementB:self];
}
@end

@implementation ObjectStructure
- (instancetype)init
{
    if (self = [super init]) {
        self.list = [NSMutableArray new];
    }
    return self;
}

- (void)attach:(Element *)e
{
    [self.list addObject:e];
}

- (void)accept:(Visitor *)v
{
    for (Element *e in self.list) {
        [e accept:v];
    }
}

@end