//
//  main.m
//  Strategy
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Context *c = [[Context alloc] init];
        c.s = [ConcreteStrategyA new];
        [c contextInterface];
        
        c.s = [ConcreteStrategyB new];
        [c contextInterface];
        
        c.s = [ConcreteStrategyC new];
        [c contextInterface];
    }
    return 0;
}
