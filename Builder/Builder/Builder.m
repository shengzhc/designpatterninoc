//
//  Builder.m
//  Builder
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Builder.h"

@implementation Product
- (id)init
{
    if (self = [super init]) {
        self.parts = [NSMutableArray new];
    }
    return self;
}

- (NSString *)description
{
    NSMutableString *ret = [[NSMutableString alloc] init];
    for (NSString *part in self.parts) {
        [ret appendString:[NSString stringWithFormat:@"%@\n", part]];
    }
    return ret;
}

@end

@implementation AbstractBuilder
- (void)build
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@interface ConcreteBuilder ()
@property (strong, nonatomic) Product *product;
@end

@implementation ConcreteBuilder

- (id)init
{
    if (self = [super init]) {
        self.product = [[Product alloc] init];
    }
    
    return self;
}

- (void)buildA
{
    [self.product.parts addObject:@"PartA"];
}

- (void)buildB
{
    [self.product.parts addObject:@"PartB"];
}

- (void)build
{
    [self buildA];
    [self buildB];
}

- (Product *)product
{
    return _product;
}

@end

@implementation Director
- (void)construct:(AbstractBuilder *)builder
{
    [builder build];
}
@end