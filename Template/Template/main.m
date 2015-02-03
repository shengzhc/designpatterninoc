//
//  main.m
//  Template
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Template.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        ConcreteClassA *a = [[ConcreteClassA alloc] init];
        [a templateMethod];
        
        ConcreteClassB *b = [[ConcreteClassB alloc] init];
        [b templateMethod];
    }
    return 0;
}
