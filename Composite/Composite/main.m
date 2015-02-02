//
//  main.m
//  Composite
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Composite.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Composite *root = [[Composite alloc] initWithName:@"Root"];
        [root add:[[Leaf alloc] initWithName:@"LeafA"]];
        [root add:[[Leaf alloc] initWithName:@"LeafB"]];
        [root display];
    }
    return 0;
}
