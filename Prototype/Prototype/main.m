//
//  main.m
//  Prototype
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prototype.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        ConcretePrototype1 *p1 = [ConcretePrototype1 new];
        p1.cloneId = @"P1";
        ConcretePrototype2 *p2 = [ConcretePrototype2 new];
        p2.cloneId = @"P2";
        Prototype *c1 = [p1 clone];
        printf([c1.cloneId UTF8String]);
        printf("\n");
        Prototype *c2 = [p2 clone];
        printf([c2.cloneId UTF8String]);
        printf("\n");
    }
    return 0;
}
