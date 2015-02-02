//
//  main.m
//  ChainofResponsibility
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChainOfResponsibility.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        ConcreteHandlerA *ha = [[ConcreteHandlerA alloc] init];
        ConcreteHandlerB *hb = [[ConcreteHandlerB alloc] init];
        ConcreteHandlerC *hc = [[ConcreteHandlerC alloc] init];
        ha.successor = hb;
        hb.successor = hc;
        [ha handleRequest:26];
    }
    return 0;
}
