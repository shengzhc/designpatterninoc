//
//  main.m
//  Memento
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        CareTaker *c = [[CareTaker alloc] init];
        Originator *o = [[Originator alloc] init];
        c.memento = [[Memento alloc] init];
        c.memento.state = @"Off";
        [o setMemento:c.memento];
        printf("%s\n", [c.memento.state UTF8String]);
        c.memento = [o createMemento];
        c.memento.state = @"On";
        [o setMemento:c.memento];
        printf("%s\n", [c.memento.state UTF8String]);
    }
    return 0;
}
