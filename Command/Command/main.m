//
//  main.m
//  Command
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Receiver *r = [[Receiver alloc] init];
        ConcreteCommand *c = [[ConcreteCommand alloc] init];
        c.receiver = r;
        Invoker *i = [[Invoker alloc] init];
        [i executeCommand:c];
    }
    return 0;
}
