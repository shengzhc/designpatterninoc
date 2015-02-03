//
//  main.m
//  Visitor
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visitor.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        ObjectStructure *o = [[ObjectStructure alloc] init];
        [o attach:[ConcreteElementA new]];
        [o attach:[ConcreteElementB new]];
        
        [o accept:[ConcreteVisitorA new]];
        [o accept:[ConcreteVisitorB new]];
    }
    return 0;
}
