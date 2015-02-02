//
//  FlyWeight.m
//  FlyWeight
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "FlyWeight.h"

@implementation FlyWeight
- (void)operate:(NSInteger)extrinsicState
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation ConcreteFlyWeight

- (void)operate:(NSInteger)extrinsicState
{
    printf("ConcreteFlyWeight: ");
    printf("%d", extrinsicState);
    printf("\n");
}

@end

@implementation UnsharableFlyWeight

- (void)operate:(NSInteger)extrinsicState
{
    printf("UnsharableFlyWeight: ");
    printf("%d", extrinsicState);
    printf("\n");
}

@end

@implementation FlyWeightFactory
- (id)init
{
    if (self = [super init]) {
        self.flyWeights = [NSMutableDictionary new];
        [self.flyWeights setObject:[ConcreteFlyWeight new] forKey:@"X"];
        [self.flyWeights setObject:[ConcreteFlyWeight new] forKey:@"Y"];
        [self.flyWeights setObject:[ConcreteFlyWeight new] forKey:@"Z"];
    }
    return self;
}

- (FlyWeight *)getFlyWeight:(NSString *)key
{
    if (![self.flyWeights objectForKey:key]) {
        [self.flyWeights setObject:[ConcreteFlyWeight new] forKey:key];
    }
    return self.flyWeights[key];
}

@end