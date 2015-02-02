//
//  Composite.m
//  Composite
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Composite.h"

@implementation AbstractComponent
- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
        self.children = [NSMutableArray new];
    }
    return self;
}

- (void)display
{
    printf([self.name UTF8String]);
    printf("\n");
}

- (void)add:(AbstractComponent *)component
{
    [self.children addObject:component];
}

- (void)remove:(AbstractComponent *)component
{
    [self.children removeObject:component];
}

- (AbstractComponent *)getChild:(NSUInteger)index
{
    NSAssert(index < self.children.count, @"Out of bound");
    return self.children[index];
}

@end

@implementation Leaf
- (void)add:(AbstractComponent *)component
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

- (void)remove:(AbstractComponent *)component
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}

- (AbstractComponent *)getChild:(NSUInteger)index
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
    return nil;
}

@end

@implementation Composite

- (void)display
{
    printf([self.name UTF8String]);
    printf("\n");
    for (AbstractComponent *component in self.children) {
        [component display];
    }
}

@end
