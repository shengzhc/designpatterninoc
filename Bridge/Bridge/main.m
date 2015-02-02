//
//  main.m
//  Bridge
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bridge.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Abstraction *ab = [[RefineAbstraction alloc] init];
        ab.implementor = [[ConcreteImplementorA alloc] init];
        [ab operate];
        ab.implementor = [[ConcreteImplementorB alloc] init];
        [ab operate];
    }
    return 0;
}
