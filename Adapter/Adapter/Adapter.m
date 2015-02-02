//
//  Adapter.m
//  Adapter
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Adapter.h"

@implementation Target
- (void)request
{
    printf("Target is calling request\n");
}
@end

@implementation Adaptee
- (void)specificRequest
{
    printf("Adaptee is calling specificRequest\n");
}

@end

@interface Adapter ()
@property (strong, nonatomic) Adaptee *adaptee;
@end

@implementation Adapter

- (id)init
{
    if (self = [super init]) {
        self.adaptee = [[Adaptee alloc] init];
    }
    return self;
}

- (void)request
{
    printf("Adapter is calling request\n");
    [self.adaptee specificRequest];
}

@end
