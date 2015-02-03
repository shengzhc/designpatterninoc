//
//  main.m
//  State
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Context *c = [[Context alloc] init];
        c.state = [ConcreteStateA new];
        [c request];
        [c request];
        [c request];
        [c request];
    }
    return 0;
}
