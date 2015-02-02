//
//  Proxy.m
//  Proxy
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Proxy.h"

@implementation Subject
- (void)request
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation RealSubject
- (void)request
{
    printf("RealSubject is requesting...\n");
}
@end

@implementation Proxy
- (id)init
{
    if (self = [super init]) {
        self.subject = [[RealSubject alloc] init];
    }
    return self;
}

- (void)request
{
    printf("Prox is requesting...\n");
    [self.subject request];
}

@end