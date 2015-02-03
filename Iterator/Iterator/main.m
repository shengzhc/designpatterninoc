//
//  main.m
//  Iterator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        ConcreteAggregate *aggregate = [[ConcreteAggregate alloc] init];
        [aggregate.list addObject:@"ListItem1"];
        [aggregate.list addObject:@"ListItem2"];
        [aggregate.list addObject:@"ListItem3"];
        
        Iterator *i = [aggregate createIterator];
        
        while (![i isDone]) {
            printf([[i currentItem] UTF8String]);
            printf("\n");
            [i next];
        }
    }
    return 0;
}
